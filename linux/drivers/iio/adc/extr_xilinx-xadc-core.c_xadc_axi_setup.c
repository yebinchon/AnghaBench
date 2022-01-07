
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xadc {int dummy; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int XADC_AXI_GIER_ENABLE ;
 int XADC_AXI_REG_GIER ;
 int XADC_AXI_REG_RESET ;
 int XADC_AXI_RESET_MAGIC ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int xadc_write_reg (struct xadc*,int ,int ) ;

__attribute__((used)) static int xadc_axi_setup(struct platform_device *pdev,
 struct iio_dev *indio_dev, int irq)
{
 struct xadc *xadc = iio_priv(indio_dev);

 xadc_write_reg(xadc, XADC_AXI_REG_RESET, XADC_AXI_RESET_MAGIC);
 xadc_write_reg(xadc, XADC_AXI_REG_GIER, XADC_AXI_GIER_ENABLE);

 return 0;
}
