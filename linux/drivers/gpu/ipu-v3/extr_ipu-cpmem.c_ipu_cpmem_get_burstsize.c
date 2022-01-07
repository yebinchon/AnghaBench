
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int dummy; } ;


 int IPU_FIELD_NPB ;
 int ipu_ch_param_read_field (struct ipuv3_channel*,int ) ;

int ipu_cpmem_get_burstsize(struct ipuv3_channel *ch)
{
 return ipu_ch_param_read_field(ch, IPU_FIELD_NPB) + 1;
}
