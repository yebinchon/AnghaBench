
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct cec_adapter {int dummy; } ;
struct adv7511 {scalar_t__ type; int cec_valid_addrs; scalar_t__* cec_addr; int regmap_cec; int cec_enabled_adap; } ;


 unsigned int ADV7511_MAX_ADDRS ;
 int ADV7511_REG_CEC_LOG_ADDR_0_1 ;
 int ADV7511_REG_CEC_LOG_ADDR_2 ;
 scalar_t__ ADV7511_REG_CEC_LOG_ADDR_MASK ;
 scalar_t__ ADV7533 ;
 unsigned int ADV7533_REG_CEC_OFFSET ;
 scalar_t__ CEC_LOG_ADDR_INVALID ;
 int EIO ;
 int ENXIO ;
 struct adv7511* cec_get_drvdata (struct cec_adapter*) ;
 int regmap_update_bits (int ,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static int adv7511_cec_adap_log_addr(struct cec_adapter *adap, u8 addr)
{
 struct adv7511 *adv7511 = cec_get_drvdata(adap);
 unsigned int offset = adv7511->type == ADV7533 ?
     ADV7533_REG_CEC_OFFSET : 0;
 unsigned int i, free_idx = ADV7511_MAX_ADDRS;

 if (!adv7511->cec_enabled_adap)
  return addr == CEC_LOG_ADDR_INVALID ? 0 : -EIO;

 if (addr == CEC_LOG_ADDR_INVALID) {
  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_MASK + offset,
       0x70, 0);
  adv7511->cec_valid_addrs = 0;
  return 0;
 }

 for (i = 0; i < ADV7511_MAX_ADDRS; i++) {
  bool is_valid = adv7511->cec_valid_addrs & (1 << i);

  if (free_idx == ADV7511_MAX_ADDRS && !is_valid)
   free_idx = i;
  if (is_valid && adv7511->cec_addr[i] == addr)
   return 0;
 }
 if (i == ADV7511_MAX_ADDRS) {
  i = free_idx;
  if (i == ADV7511_MAX_ADDRS)
   return -ENXIO;
 }
 adv7511->cec_addr[i] = addr;
 adv7511->cec_valid_addrs |= 1 << i;

 switch (i) {
 case 0:

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_MASK + offset,
       0x10, 0x10);

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_0_1 + offset,
       0x0f, addr);
  break;
 case 1:

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_MASK + offset,
       0x20, 0x20);

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_0_1 + offset,
       0xf0, addr << 4);
  break;
 case 2:

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_MASK + offset,
       0x40, 0x40);

  regmap_update_bits(adv7511->regmap_cec,
       ADV7511_REG_CEC_LOG_ADDR_2 + offset,
       0x0f, addr);
  break;
 }
 return 0;
}
