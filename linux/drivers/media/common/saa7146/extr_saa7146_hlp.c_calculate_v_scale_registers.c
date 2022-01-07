
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct saa7146_dev {int dummy; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_2__ {int hps_coeff; int weight_sum; } ;


 int EINVAL ;
 int MASK_B2 ;
 int MASK_W0 ;
 int V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_BOTTOM ;
 scalar_t__ V4L2_FIELD_HAS_BOTH (int) ;
 int V4L2_FIELD_TOP ;
 TYPE_1__* hps_v_coeff_tab ;
 scalar_t__* v_attenuation ;

__attribute__((used)) static int calculate_v_scale_registers(struct saa7146_dev *dev, enum v4l2_field field,
 int in_y, int out_y, u32* hps_v_scale, u32* hps_v_gain)
{
 int lpi = 0;


 u32 yacm = 0, ysci = 0, yacl = 0, ypo = 0, ype = 0;

 u32 dcgy = 0, cya_cyb = 0;


 u32 v_atten = 0, i = 0;


 if ( in_y < out_y ) {
  return -EINVAL;
 }





 if (V4L2_FIELD_HAS_BOTH(field)) {
  if( 2*out_y >= in_y) {
   lpi = 1;
  }
 } else if (field == V4L2_FIELD_TOP
  || field == V4L2_FIELD_ALTERNATE
  || field == V4L2_FIELD_BOTTOM) {
  if( 4*out_y >= in_y ) {
   lpi = 1;
  }
  out_y *= 2;
 }
 if( 0 != lpi ) {

  yacm = 0;
  yacl = 0;
  cya_cyb = 0x00ff;


  if ( in_y > out_y )
   ysci = ((1024 * in_y) / (out_y + 1)) - 1024;
  else
   ysci = 0;

  dcgy = 0;


  ype = ysci / 16;
  ypo = ype + (ysci / 64);

 } else {
  yacm = 1;


  ysci = (((10 * 1024 * (in_y - out_y - 1)) / in_y) + 9) / 10;


  ypo = ype = ((ysci + 15) / 16);






  if ( ysci < 512) {
   yacl = 0;
  } else {
   yacl = ( ysci / (1024 - ysci) );
  }


  cya_cyb = hps_v_coeff_tab[ (yacl < 63 ? yacl : 63 ) ].hps_coeff;


  v_atten = hps_v_coeff_tab[ (yacl < 63 ? yacl : 63 ) ].weight_sum;

  for (i = 0; v_attenuation[i] != 0; i++) {
   if (v_attenuation[i] >= v_atten)
    break;
  }

  dcgy = i;
 }


 *hps_v_scale |= (yacm << 31) | (ysci << 21) | (yacl << 15) | (ypo << 8 ) | (ype << 1);

 *hps_v_gain &= ~(MASK_W0|MASK_B2);
 *hps_v_gain |= (dcgy << 16) | (cya_cyb << 0);

 return 0;
}
