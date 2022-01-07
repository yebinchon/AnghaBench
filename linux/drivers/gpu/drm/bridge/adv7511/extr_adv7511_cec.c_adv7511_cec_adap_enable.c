
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {int dummy; } ;
struct adv7511 {scalar_t__ type; int cec_enabled_adap; scalar_t__ cec_valid_addrs; int regmap_cec; int regmap; int * i2c_cec; } ;


 int ADV7511_INT1_CEC_MASK ;
 scalar_t__ ADV7511_REG_CEC_CLK_DIV ;
 scalar_t__ ADV7511_REG_CEC_LOG_ADDR_MASK ;
 scalar_t__ ADV7511_REG_CEC_RX_BUFFERS ;
 scalar_t__ ADV7511_REG_CEC_TX_ENABLE ;
 scalar_t__ ADV7511_REG_INT_ENABLE (int) ;
 scalar_t__ ADV7533 ;
 unsigned int ADV7533_REG_CEC_OFFSET ;
 int EIO ;
 struct adv7511* cec_get_drvdata (struct cec_adapter*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static int adv7511_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct adv7511 *adv7511 = cec_get_drvdata(adap);
 unsigned int offset = adv7511->type == ADV7533 ?
     ADV7533_REG_CEC_OFFSET : 0;

 if (adv7511->i2c_cec == ((void*)0))
  return -EIO;

 if (!adv7511->cec_enabled_adap && enable) {

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_CLK_DIV + offset,
       0x03, 0x01);

  regmap_write(adv7511->regmap_cec,
        ADV7511_REG_CEC_RX_BUFFERS + offset, 0x07);
  regmap_write(adv7511->regmap_cec,
        ADV7511_REG_CEC_RX_BUFFERS + offset, 0);

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_TX_ENABLE + offset, 1, 0);





  regmap_update_bits(adv7511->regmap,
       ADV7511_REG_INT_ENABLE(1), 0x3f,
       ADV7511_INT1_CEC_MASK);
 } else if (adv7511->cec_enabled_adap && !enable) {
  regmap_update_bits(adv7511->regmap,
       ADV7511_REG_INT_ENABLE(1), 0x3f, 0);

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_MASK + offset,
       0x70, 0x00);

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_CLK_DIV + offset,
       0x03, 0x00);
  adv7511->cec_valid_addrs = 0;
 }
 adv7511->cec_enabled_adap = enable;
 return 0;
}
