
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_adc {struct stmpe* stmpe; } ;
struct stmpe {int dev; } ;


 int STMPE_BLOCK_ADC ;
 scalar_t__ STMPE_REG_TEMP_TH ;
 int dev_err (int ,char*) ;
 int stmpe811_adc_common_init (struct stmpe*) ;
 int stmpe_disable (struct stmpe*,int ) ;
 int stmpe_enable (struct stmpe*,int ) ;
 int stmpe_reg_write (struct stmpe*,scalar_t__,int ) ;

__attribute__((used)) static int stmpe_adc_init_hw(struct stmpe_adc *adc)
{
 int ret;
 struct stmpe *stmpe = adc->stmpe;

 ret = stmpe_enable(stmpe, STMPE_BLOCK_ADC);
 if (ret) {
  dev_err(stmpe->dev, "Could not enable clock for ADC\n");
  return ret;
 }

 ret = stmpe811_adc_common_init(stmpe);
 if (ret) {
  stmpe_disable(stmpe, STMPE_BLOCK_ADC);
  return ret;
 }


 stmpe_reg_write(stmpe, STMPE_REG_TEMP_TH, 0);
 stmpe_reg_write(stmpe, STMPE_REG_TEMP_TH + 1, 0);

 return 0;
}
