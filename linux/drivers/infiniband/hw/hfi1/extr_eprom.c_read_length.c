
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;


 int CMD_SHIFT ;
 int EINVAL ;
 int EP_PAGE_DWORDS ;
 scalar_t__ EP_PAGE_MASK ;
 scalar_t__ EP_PAGE_SIZE ;
 int memcpy (void*,scalar_t__*,scalar_t__) ;
 int read_page (struct hfi1_devdata*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int read_length(struct hfi1_devdata *dd, u32 start, u32 len, void *dest)
{
 u32 buffer[EP_PAGE_DWORDS];
 u32 end;
 u32 start_offset;
 u32 read_start;
 u32 bytes;

 if (len == 0)
  return 0;

 end = start + len;






 if (end > (1 << CMD_SHIFT))
  return -EINVAL;


 start_offset = start & EP_PAGE_MASK;
 if (start_offset) {



  read_start = start & ~EP_PAGE_MASK;
  read_page(dd, read_start, buffer);


  bytes = EP_PAGE_SIZE - start_offset;

  if (len <= bytes) {

   memcpy(dest, (u8 *)buffer + start_offset, len);
   return 0;
  }

  memcpy(dest, (u8 *)buffer + start_offset, bytes);

  start += bytes;
  len -= bytes;
  dest += bytes;
 }



 while (len >= EP_PAGE_SIZE) {
  read_page(dd, start, buffer);
  memcpy(dest, buffer, EP_PAGE_SIZE);

  start += EP_PAGE_SIZE;
  len -= EP_PAGE_SIZE;
  dest += EP_PAGE_SIZE;
 }


 if (len) {
  read_page(dd, start, buffer);
  memcpy(dest, buffer, len);
 }

 return 0;
}
