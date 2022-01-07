
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int DRM_ERROR (char*) ;






__attribute__((used)) static int goto_next_sequence(const u8 *data, int index, int total)
{
 u16 len;


 for (index = index + 1; index < total; index += len) {
  u8 operation_byte = *(data + index);
  index++;

  switch (operation_byte) {
  case 131:
   return index;
  case 128:
   if (index + 4 > total)
    return 0;

   len = *((const u16 *)(data + index + 2)) + 4;
   break;
  case 132:
   len = 4;
   break;
  case 130:
   len = 2;
   break;
  case 129:
   if (index + 7 > total)
    return 0;
   len = *(data + index + 6) + 7;
   break;
  default:
   DRM_ERROR("Unknown operation byte\n");
   return 0;
  }
 }

 return 0;
}
