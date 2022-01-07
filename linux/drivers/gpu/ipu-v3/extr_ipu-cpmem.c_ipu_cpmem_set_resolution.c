
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_FH ;
 int IPU_FIELD_FW ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;

void ipu_cpmem_set_resolution(struct ipuv3_channel *ch, int xres, int yres)
{
 ipu_ch_param_write_field(ch, IPU_FIELD_FW, xres - 1);
 ipu_ch_param_write_field(ch, IPU_FIELD_FH, yres - 1);
}
