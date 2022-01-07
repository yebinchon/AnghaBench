
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int DRM_ERROR (char*,...) ;

 int MIPI_SEQ_ELEM_END ;






__attribute__((used)) static int goto_next_sequence_v3(const u8 *data, int index, int total)
{
 int seq_end;
 u16 len;
 u32 size_of_sequence;





 if (total < 5) {
  DRM_ERROR("Too small sequence size\n");
  return 0;
 }


 index++;






 size_of_sequence = *((const u32 *)(data + index));
 index += 4;

 seq_end = index + size_of_sequence;
 if (seq_end > total) {
  DRM_ERROR("Invalid sequence size\n");
  return 0;
 }

 for (; index < total; index += len) {
  u8 operation_byte = *(data + index);
  index++;

  if (operation_byte == MIPI_SEQ_ELEM_END) {
   if (index != seq_end) {
    DRM_ERROR("Invalid element structure\n");
    return 0;
   }
   return index;
  }

  len = *(data + index);
  index++;





  switch (operation_byte) {
  case 129:
  case 133:
  case 132:
  case 131:
  case 128:
  case 130:
   break;
  default:
   DRM_ERROR("Unknown operation byte %u\n",
      operation_byte);
   break;
  }
 }

 return 0;
}
