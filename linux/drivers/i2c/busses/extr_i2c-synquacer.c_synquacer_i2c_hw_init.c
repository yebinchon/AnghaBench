
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct synquacer_i2c {int speed_khz; scalar_t__ base; int pclkrate; } ;


 unsigned char SYNQUACER_I2C_BUS_CLK_FR (int ) ;
 unsigned char SYNQUACER_I2C_CCR_CS_FAST_MAX_18M (int ) ;
 unsigned char SYNQUACER_I2C_CCR_CS_FAST_MIN_18M (int ) ;
 unsigned char SYNQUACER_I2C_CCR_CS_STD_MAX_18M (int ) ;
 unsigned char SYNQUACER_I2C_CCR_CS_STD_MIN_18M (int ) ;
 unsigned char SYNQUACER_I2C_CCR_EN ;
 unsigned char SYNQUACER_I2C_CCR_FM ;
 int SYNQUACER_I2C_CLK_RATE_18M ;
 unsigned char SYNQUACER_I2C_CSR_CS_FAST_MAX_18M (int ) ;
 unsigned char SYNQUACER_I2C_CSR_CS_FAST_MIN_18M (int ) ;
 unsigned char SYNQUACER_I2C_CSR_CS_STD_MAX_18M (int ) ;
 unsigned char SYNQUACER_I2C_CSR_CS_STD_MIN_18M (int ) ;
 scalar_t__ SYNQUACER_I2C_REG_ADR ;
 scalar_t__ SYNQUACER_I2C_REG_BC2R ;
 scalar_t__ SYNQUACER_I2C_REG_BCR ;
 scalar_t__ SYNQUACER_I2C_REG_CCR ;
 scalar_t__ SYNQUACER_I2C_REG_CSR ;
 scalar_t__ SYNQUACER_I2C_REG_FSR ;


 int WARN_ON (int) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void synquacer_i2c_hw_init(struct synquacer_i2c *i2c)
{
 unsigned char ccr_cs, csr_cs;
 u32 rt = i2c->pclkrate;


 writeb(0, i2c->base + SYNQUACER_I2C_REG_ADR);


 writeb(SYNQUACER_I2C_BUS_CLK_FR(i2c->pclkrate),
        i2c->base + SYNQUACER_I2C_REG_FSR);

 switch (i2c->speed_khz) {
 case 129:
  if (i2c->pclkrate <= SYNQUACER_I2C_CLK_RATE_18M) {
   ccr_cs = SYNQUACER_I2C_CCR_CS_FAST_MAX_18M(rt);
   csr_cs = SYNQUACER_I2C_CSR_CS_FAST_MAX_18M(rt);
  } else {
   ccr_cs = SYNQUACER_I2C_CCR_CS_FAST_MIN_18M(rt);
   csr_cs = SYNQUACER_I2C_CSR_CS_FAST_MIN_18M(rt);
  }


  writeb(ccr_cs | SYNQUACER_I2C_CCR_FM |
         SYNQUACER_I2C_CCR_EN,
         i2c->base + SYNQUACER_I2C_REG_CCR);
  writeb(csr_cs, i2c->base + SYNQUACER_I2C_REG_CSR);
  break;
 case 128:
  if (i2c->pclkrate <= SYNQUACER_I2C_CLK_RATE_18M) {
   ccr_cs = SYNQUACER_I2C_CCR_CS_STD_MAX_18M(rt);
   csr_cs = SYNQUACER_I2C_CSR_CS_STD_MAX_18M(rt);
  } else {
   ccr_cs = SYNQUACER_I2C_CCR_CS_STD_MIN_18M(rt);
   csr_cs = SYNQUACER_I2C_CSR_CS_STD_MIN_18M(rt);
  }


  writeb(ccr_cs | SYNQUACER_I2C_CCR_EN,
        i2c->base + SYNQUACER_I2C_REG_CCR);
  writeb(csr_cs, i2c->base + SYNQUACER_I2C_REG_CSR);
  break;
 default:
  WARN_ON(1);
 }


 writeb(0, i2c->base + SYNQUACER_I2C_REG_BCR);
 writeb(0, i2c->base + SYNQUACER_I2C_REG_BC2R);
}
