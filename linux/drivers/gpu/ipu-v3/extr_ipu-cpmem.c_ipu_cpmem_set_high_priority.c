
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int num; struct ipu_soc* ipu; } ;
struct ipu_soc {scalar_t__ ipu_type; } ;


 int IDMAC_CHA_PRI (int) ;
 scalar_t__ IPUV3EX ;
 int IPU_FIELD_ID ;
 int ipu_ch_param_write_field (struct ipuv3_channel*,int ,int) ;
 int ipu_idmac_read (struct ipu_soc*,int ) ;
 int ipu_idmac_write (struct ipu_soc*,int,int ) ;

void ipu_cpmem_set_high_priority(struct ipuv3_channel *ch)
{
 struct ipu_soc *ipu = ch->ipu;
 u32 val;

 if (ipu->ipu_type == IPUV3EX)
  ipu_ch_param_write_field(ch, IPU_FIELD_ID, 1);

 val = ipu_idmac_read(ipu, IDMAC_CHA_PRI(ch->num));
 val |= 1 << (ch->num % 32);
 ipu_idmac_write(ipu, val, IDMAC_CHA_PRI(ch->num));
}
