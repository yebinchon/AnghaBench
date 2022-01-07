
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct a6xx_hfi_queue_header {size_t read_index; size_t write_index; int rx_request; size_t size; } ;
struct a6xx_hfi_queue {size_t* data; struct a6xx_hfi_queue_header* header; } ;


 int BUG_ON (int) ;
 int HFI_HEADER_SIZE (size_t) ;

__attribute__((used)) static int a6xx_hfi_queue_read(struct a6xx_hfi_queue *queue, u32 *data,
  u32 dwords)
{
 struct a6xx_hfi_queue_header *header = queue->header;
 u32 i, hdr, index = header->read_index;

 if (header->read_index == header->write_index) {
  header->rx_request = 1;
  return 0;
 }

 hdr = queue->data[index];
 BUG_ON(HFI_HEADER_SIZE(hdr) > dwords);

 for (i = 0; i < HFI_HEADER_SIZE(hdr); i++) {
  data[i] = queue->data[index];
  index = (index + 1) % header->size;
 }

 header->read_index = index;
 return HFI_HEADER_SIZE(hdr);
}
