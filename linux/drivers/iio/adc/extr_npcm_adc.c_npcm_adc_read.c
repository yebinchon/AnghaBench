
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct npcm_adc {int int_status; scalar_t__ regs; int dev; scalar_t__ rst_regmap; int wq; } ;


 int ETIMEDOUT ;
 int NPCM7XX_IPSRST1_ADC_RST ;
 int NPCM7XX_IPSRST1_OFFSET ;
 scalar_t__ NPCM_ADCCON ;
 int NPCM_ADCCON_ADC_CONV ;
 int NPCM_ADCCON_CH (int ) ;
 int NPCM_ADCCON_CH_MASK ;
 scalar_t__ NPCM_ADCDATA ;
 int NPCM_ADC_DATA_MASK (int) ;
 int NPCM_ADC_ENABLE ;
 int dev_err (int ,char*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int regmap_write (scalar_t__,int ,int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int npcm_adc_read(struct npcm_adc *info, int *val, u8 channel)
{
 int ret;
 u32 regtemp;


 regtemp = ioread32(info->regs + NPCM_ADCCON);
 regtemp &= ~NPCM_ADCCON_CH_MASK;
 info->int_status = 0;
 iowrite32(regtemp | NPCM_ADCCON_CH(channel) |
    NPCM_ADCCON_ADC_CONV, info->regs + NPCM_ADCCON);

 ret = wait_event_interruptible_timeout(info->wq, info->int_status,
            msecs_to_jiffies(10));
 if (ret == 0) {
  regtemp = ioread32(info->regs + NPCM_ADCCON);
  if ((regtemp & NPCM_ADCCON_ADC_CONV) && info->rst_regmap) {

   regmap_write(info->rst_regmap, NPCM7XX_IPSRST1_OFFSET,
         NPCM7XX_IPSRST1_ADC_RST);
   msleep(100);
   regmap_write(info->rst_regmap, NPCM7XX_IPSRST1_OFFSET,
         0x0);
   msleep(100);


   iowrite32(NPCM_ADC_ENABLE | NPCM_ADCCON_ADC_CONV,
      info->regs + NPCM_ADCCON);
   dev_err(info->dev, "RESET ADC Complete\n");
  }
  return -ETIMEDOUT;
 }
 if (ret < 0)
  return ret;

 *val = NPCM_ADC_DATA_MASK(ioread32(info->regs + NPCM_ADCDATA));

 return 0;
}
