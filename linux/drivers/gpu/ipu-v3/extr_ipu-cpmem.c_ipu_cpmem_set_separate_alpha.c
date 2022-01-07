
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {int dummy; } ;


 int BIT (int ) ;
 int IDMAC_SEP_ALPHA ;
 int IPU_FIELD_ALBM ;
 int IPU_FIELD_ALU ;
 int IPU_FIELD_CRE ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;
 int ipu_channel_albm (int ) ;
 int ipu_idmac_read (struct ipu_soc*,int ) ;
 int ipu_idmac_write (struct ipu_soc*,int ,int ) ;

__attribute__((used)) static void ipu_cpmem_set_separate_alpha(struct ipuv3_channel *ch)
{
 struct ipu_soc *ipu = ch->ipu;
 int albm;
 u32 val;

 albm = ipu_channel_albm(ch->num);
 if (albm < 0)
  return;

 ipu_ch_param_write_field(ch, IPU_FIELD_ALU, 1);
 ipu_ch_param_write_field(ch, IPU_FIELD_ALBM, albm);
 ipu_ch_param_write_field(ch, IPU_FIELD_CRE, 1);

 val = ipu_idmac_read(ipu, IDMAC_SEP_ALPHA);
 val |= BIT(ch->num);
 ipu_idmac_write(ipu, val, IDMAC_SEP_ALPHA);
}
