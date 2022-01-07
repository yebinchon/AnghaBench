
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct stmpe_adc {scalar_t__ channel; int completion; scalar_t__ value; int stmpe; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int STMPE_ADC_CH (scalar_t__) ;
 scalar_t__ STMPE_ADC_LAST_NR ;
 int STMPE_REG_ADC_DATA_CH (scalar_t__) ;
 int STMPE_REG_ADC_INT_STA ;
 int STMPE_REG_TEMP_DATA ;
 scalar_t__ STMPE_TEMP_CHANNEL ;
 scalar_t__ be16_to_cpu (int ) ;
 int complete (int *) ;
 int stmpe_block_read (int ,int ,int,int *) ;
 int stmpe_reg_read (int ,int ) ;
 int stmpe_reg_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t stmpe_adc_isr(int irq, void *dev_id)
{
 struct stmpe_adc *info = (struct stmpe_adc *)dev_id;
 u16 data;

 if (info->channel <= STMPE_ADC_LAST_NR) {
  int int_sta;

  int_sta = stmpe_reg_read(info->stmpe, STMPE_REG_ADC_INT_STA);


  if (!(int_sta & STMPE_ADC_CH(info->channel)))
   return IRQ_NONE;


  stmpe_block_read(info->stmpe,
   STMPE_REG_ADC_DATA_CH(info->channel), 2, (u8 *) &data);

  stmpe_reg_write(info->stmpe, STMPE_REG_ADC_INT_STA, int_sta);
 } else if (info->channel == STMPE_TEMP_CHANNEL) {

  stmpe_block_read(info->stmpe, STMPE_REG_TEMP_DATA, 2,
    (u8 *) &data);
 } else {
  return IRQ_NONE;
 }

 info->value = (u32) be16_to_cpu(data);
 complete(&info->completion);

 return IRQ_HANDLED;
}
