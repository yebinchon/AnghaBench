
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int actual_length; } ;
struct ims_pcu {int* urb_in_buf; int have_stx; int have_dle; int* read_buf; int check_sum; scalar_t__ read_pos; int dev; } ;


 scalar_t__ IMS_PCU_MIN_PACKET_LEN ;



 int dev_warn (int ,char*,scalar_t__) ;
 int ims_pcu_handle_response (struct ims_pcu*) ;

__attribute__((used)) static void ims_pcu_process_data(struct ims_pcu *pcu, struct urb *urb)
{
 int i;

 for (i = 0; i < urb->actual_length; i++) {
  u8 data = pcu->urb_in_buf[i];


  if (!pcu->have_stx && data != 128)
   continue;

  if (pcu->have_dle) {
   pcu->have_dle = 0;
   pcu->read_buf[pcu->read_pos++] = data;
   pcu->check_sum += data;
   continue;
  }

  switch (data) {
  case 128:
   if (pcu->have_stx)
    dev_warn(pcu->dev,
      "Unexpected STX at byte %d, discarding old data\n",
      pcu->read_pos);
   pcu->have_stx = 1;
   pcu->have_dle = 0;
   pcu->read_pos = 0;
   pcu->check_sum = 0;
   break;

  case 130:
   pcu->have_dle = 1;
   break;

  case 129:
   if (pcu->read_pos < IMS_PCU_MIN_PACKET_LEN) {
    dev_warn(pcu->dev,
      "Short packet received (%d bytes), ignoring\n",
      pcu->read_pos);
   } else if (pcu->check_sum != 0) {
    dev_warn(pcu->dev,
      "Invalid checksum in packet (%d bytes), ignoring\n",
      pcu->read_pos);
   } else {
    ims_pcu_handle_response(pcu);
   }

   pcu->have_stx = 0;
   pcu->have_dle = 0;
   pcu->read_pos = 0;
   break;

  default:
   pcu->read_buf[pcu->read_pos++] = data;
   pcu->check_sum += data;
   break;
  }
 }
}
