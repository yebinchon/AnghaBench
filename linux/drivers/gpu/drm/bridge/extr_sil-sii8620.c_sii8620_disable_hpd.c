
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int dummy; } ;


 int BIT_EDID_CTRL_EDID_PRIME_VALID ;
 int BIT_HPD_CTRL_HPD_OUT_OVR_EN ;
 int REG_EDID_CTRL ;
 int REG_HPD_CTRL ;
 int REG_INTR8_MASK ;
 int sii8620_setbits (struct sii8620*,int ,int ,int ) ;
 int sii8620_write_seq_static (struct sii8620*,int ,int ,int ,int ) ;

__attribute__((used)) static void sii8620_disable_hpd(struct sii8620 *ctx)
{
 sii8620_setbits(ctx, REG_EDID_CTRL, BIT_EDID_CTRL_EDID_PRIME_VALID, 0);
 sii8620_write_seq_static(ctx,
  REG_HPD_CTRL, BIT_HPD_CTRL_HPD_OUT_OVR_EN,
  REG_INTR8_MASK, 0
 );
}
