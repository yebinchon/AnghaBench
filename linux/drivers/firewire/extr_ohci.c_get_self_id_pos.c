
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_ohci {int* self_id_buffer; } ;



__attribute__((used)) static int get_self_id_pos(struct fw_ohci *ohci, u32 self_id,
 int self_id_count)
{
 int i;
 u32 entry;

 for (i = 0; i < self_id_count; i++) {
  entry = ohci->self_id_buffer[i];
  if ((self_id & 0xff000000) == (entry & 0xff000000))
   return -1;
  if ((self_id & 0xff000000) < (entry & 0xff000000))
   return i;
 }
 return i;
}
