
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_eprom_table_entry {scalar_t__ type; int size; int offset; } ;
struct hfi1_eprom_footer {scalar_t__ version; int oprom_size; int num_table_entries; } ;
struct hfi1_devdata {int dummy; } ;


 int DIRECTORY_SIZE (int) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EP_PAGE_SIZE ;
 scalar_t__ FOOTER_VERSION ;
 int GFP_KERNEL ;
 scalar_t__ HFI1_EFT_PLATFORM_CONFIG ;
 int MAX_TABLE_ENTRIES (int) ;
 int SEG_SIZE ;
 int dd_dev_err (struct hfi1_devdata*,char*,int,...) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int read_length (struct hfi1_devdata*,int,int,void*) ;

__attribute__((used)) static int read_segment_platform_config(struct hfi1_devdata *dd,
     void *directory, void **data, u32 *size)
{
 struct hfi1_eprom_footer *footer;
 struct hfi1_eprom_table_entry *table;
 struct hfi1_eprom_table_entry *entry;
 void *buffer = ((void*)0);
 void *table_buffer = ((void*)0);
 int ret, i;
 u32 directory_size;
 u32 seg_base, seg_offset;
 u32 bytes_available, ncopied, to_copy;


 footer = (struct hfi1_eprom_footer *)
   (directory + EP_PAGE_SIZE - sizeof(*footer));


 if (footer->version != FOOTER_VERSION)
  return -EINVAL;


 if (footer->oprom_size >= SEG_SIZE)
  return -EINVAL;


 if (footer->num_table_entries >
   MAX_TABLE_ENTRIES(SEG_SIZE - footer->oprom_size))
  return -EINVAL;


 directory_size = DIRECTORY_SIZE(footer->num_table_entries);
 if (directory_size <= EP_PAGE_SIZE) {

  table = (struct hfi1_eprom_table_entry *)
    (directory + EP_PAGE_SIZE - directory_size);
 } else {

  table_buffer = kmalloc(directory_size, GFP_KERNEL);
  if (!table_buffer)
   return -ENOMEM;
  ret = read_length(dd, SEG_SIZE - directory_size,
      directory_size, table_buffer);
  if (ret)
   goto done;
  table = table_buffer;
 }


 for (entry = ((void*)0), i = 0; i < footer->num_table_entries; i++) {
  if (table[i].type == HFI1_EFT_PLATFORM_CONFIG) {
   entry = &table[i];
   break;
  }
 }
 if (!entry) {
  ret = -ENOENT;
  goto done;
 }





 if (entry->size > (4 * 1024)) {
  dd_dev_err(dd, "Bad configuration file size 0x%x\n",
      entry->size);
  ret = -EINVAL;
  goto done;
 }


 if (entry->offset + entry->size < entry->offset) {
  dd_dev_err(dd,
      "Bad configuration file start + size 0x%x+0x%x\n",
      entry->offset, entry->size);
  ret = -EINVAL;
  goto done;
 }


 buffer = kmalloc(entry->size, GFP_KERNEL);
 if (!buffer) {
  ret = -ENOMEM;
  goto done;
 }




 seg_offset = entry->offset % SEG_SIZE;
 seg_base = entry->offset - seg_offset;
 ncopied = 0;
 while (ncopied < entry->size) {



  bytes_available = SEG_SIZE - seg_offset;

  if (seg_base == 0) {




   if (bytes_available <= directory_size) {
    dd_dev_err(dd,
        "Bad configuration file - offset 0x%x within footer+table\n",
        entry->offset);
    ret = -EINVAL;
    goto done;
   }
   bytes_available -= directory_size;
  }


  to_copy = entry->size - ncopied;


  if (to_copy > bytes_available)
   to_copy = bytes_available;
  ret = read_length(dd, seg_base + seg_offset, to_copy,
      buffer + ncopied);
  if (ret)
   goto done;

  ncopied += to_copy;


  seg_offset = footer->oprom_size;
  seg_base += SEG_SIZE;
 }


 ret = 0;
 *data = buffer;
 *size = entry->size;

done:
 kfree(table_buffer);
 if (ret)
  kfree(buffer);
 return ret;
}
