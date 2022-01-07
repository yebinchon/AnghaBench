
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_lradc_adc {scalar_t__ base; int completion; int is_divided; struct mxs_lradc* lradc; } ;
struct mxs_lradc {scalar_t__ soc; } ;
struct iio_dev {int dummy; } ;


 int BIT (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 int IIO_VAL_INT ;
 scalar_t__ IMX28_LRADC ;
 scalar_t__ LRADC_CH (int ) ;
 int LRADC_CH_VALUE_MASK ;
 scalar_t__ LRADC_CTRL0 ;
 scalar_t__ LRADC_CTRL1 ;
 int LRADC_CTRL1_LRADC_IRQ_EN (int ) ;
 scalar_t__ LRADC_CTRL2 ;
 int LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET ;
 scalar_t__ LRADC_CTRL4 ;
 int LRADC_CTRL4_LRADCSELECT_MASK (int ) ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct mxs_lradc_adc* iio_priv (struct iio_dev*) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 scalar_t__ test_bit (int,int *) ;
 int wait_for_completion_killable_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxs_lradc_adc_read_single(struct iio_dev *iio_dev, int chan,
         int *val)
{
 struct mxs_lradc_adc *adc = iio_priv(iio_dev);
 struct mxs_lradc *lradc = adc->lradc;
 int ret;







 ret = iio_device_claim_direct_mode(iio_dev);
 if (ret)
  return ret;

 reinit_completion(&adc->completion);






 if (lradc->soc == IMX28_LRADC)
  writel(LRADC_CTRL1_LRADC_IRQ_EN(0),
         adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
 writel(0x1, adc->base + LRADC_CTRL0 + STMP_OFFSET_REG_CLR);


 if (test_bit(chan, &adc->is_divided))
  writel(1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET,
         adc->base + LRADC_CTRL2 + STMP_OFFSET_REG_SET);
 else
  writel(1 << LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET,
         adc->base + LRADC_CTRL2 + STMP_OFFSET_REG_CLR);


 writel(LRADC_CTRL4_LRADCSELECT_MASK(0),
        adc->base + LRADC_CTRL4 + STMP_OFFSET_REG_CLR);
 writel(chan, adc->base + LRADC_CTRL4 + STMP_OFFSET_REG_SET);

 writel(0, adc->base + LRADC_CH(0));


 writel(LRADC_CTRL1_LRADC_IRQ_EN(0),
        adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_SET);
 writel(BIT(0), adc->base + LRADC_CTRL0 + STMP_OFFSET_REG_SET);


 ret = wait_for_completion_killable_timeout(&adc->completion, HZ);
 if (!ret)
  ret = -ETIMEDOUT;
 if (ret < 0)
  goto err;


 *val = readl(adc->base + LRADC_CH(0)) & LRADC_CH_VALUE_MASK;
 ret = IIO_VAL_INT;

err:
 writel(LRADC_CTRL1_LRADC_IRQ_EN(0),
        adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

 iio_device_release_direct_mode(iio_dev);

 return ret;
}
