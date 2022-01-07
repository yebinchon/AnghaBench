
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct npcm_adc {int adc_clk; int vref; scalar_t__ regs; } ;
struct iio_dev {int dummy; } ;


 int IS_ERR (int ) ;
 scalar_t__ NPCM_ADCCON ;
 int NPCM_ADCCON_ADC_EN ;
 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct npcm_adc* iio_priv (struct iio_dev*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int npcm_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct npcm_adc *info = iio_priv(indio_dev);
 u32 regtemp;

 iio_device_unregister(indio_dev);

 regtemp = ioread32(info->regs + NPCM_ADCCON);
 iowrite32(regtemp & ~NPCM_ADCCON_ADC_EN, info->regs + NPCM_ADCCON);
 if (!IS_ERR(info->vref))
  regulator_disable(info->vref);
 clk_disable_unprepare(info->adc_clk);

 return 0;
}
