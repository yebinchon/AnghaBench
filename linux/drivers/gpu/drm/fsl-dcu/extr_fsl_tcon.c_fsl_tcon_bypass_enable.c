
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_tcon {int regs; } ;


 int FSL_TCON_CTRL1 ;
 int FSL_TCON_CTRL1_TCON_BYPASS ;
 int regmap_update_bits (int ,int ,int ,int ) ;

void fsl_tcon_bypass_enable(struct fsl_tcon *tcon)
{
 regmap_update_bits(tcon->regs, FSL_TCON_CTRL1,
      FSL_TCON_CTRL1_TCON_BYPASS,
      FSL_TCON_CTRL1_TCON_BYPASS);
}
