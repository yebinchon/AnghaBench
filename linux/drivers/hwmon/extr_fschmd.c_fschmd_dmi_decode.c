
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dmi_header {int type; int length; } ;


 int* dmi_mult ;
 int* dmi_offset ;
 int dmi_vref ;

__attribute__((used)) static void fschmd_dmi_decode(const struct dmi_header *header, void *dummy)
{
 int i, mult[3] = { 0 }, offset[3] = { 0 }, vref = 0, found = 0;







 u8 *dmi_data = (u8 *)header;


 if (header->type != 185)
  return;





 if (header->length < 5 || dmi_data[4] != 19)
  return;






 for (i = 6; (i + 4) < header->length; i += 5) {

  if (dmi_data[i] >= 1 && dmi_data[i] <= 3) {

   const int shuffle[3] = { 1, 0, 2 };
   int in = shuffle[dmi_data[i] - 1];


   if (found & (1 << in))
    return;

   mult[in] = dmi_data[i + 1] | (dmi_data[i + 2] << 8);
   offset[in] = dmi_data[i + 3] | (dmi_data[i + 4] << 8);

   found |= 1 << in;
  }


  if (dmi_data[i] == 7) {

   if (found & 0x08)
    return;

   vref = dmi_data[i + 1] | (dmi_data[i + 2] << 8);

   found |= 0x08;
  }
 }

 if (found == 0x0F) {
  for (i = 0; i < 3; i++) {
   dmi_mult[i] = mult[i] * 10;
   dmi_offset[i] = offset[i] * 10;
  }





  dmi_mult[3] = dmi_mult[2];
  dmi_mult[4] = dmi_mult[1];
  dmi_mult[5] = dmi_mult[2];
  dmi_offset[3] = dmi_offset[2];
  dmi_offset[4] = dmi_offset[1];
  dmi_offset[5] = dmi_offset[2];
  dmi_vref = vref;
 }
}
