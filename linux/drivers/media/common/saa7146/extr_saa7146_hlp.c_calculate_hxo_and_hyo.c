
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct saa7146_vv {TYPE_1__* standard; } ;
struct TYPE_2__ {int v_offset; int h_offset; } ;


 int MASK_B0 ;
 int MASK_B2 ;
 int MASK_W0 ;

__attribute__((used)) static void calculate_hxo_and_hyo(struct saa7146_vv *vv, u32* hps_h_scale, u32* hps_ctrl)
{
 int hyo = 0, hxo = 0;

 hyo = vv->standard->v_offset;
 hxo = vv->standard->h_offset;

 *hps_h_scale &= ~(MASK_B0 | 0xf00);
 *hps_h_scale |= (hxo << 0);

 *hps_ctrl &= ~(MASK_W0 | MASK_B2);
 *hps_ctrl |= (hyo << 12);
}
