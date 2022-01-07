
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcm_iproc_i2c_dev {int adapter; scalar_t__ irq; } ;


 int IE_OFFSET ;
 int bcm_iproc_i2c_enable_disable (struct bcm_iproc_i2c_dev*,int) ;
 int i2c_del_adapter (int *) ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;
 int iproc_i2c_wr_reg (struct bcm_iproc_i2c_dev*,int ,int ) ;
 struct bcm_iproc_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int synchronize_irq (scalar_t__) ;

__attribute__((used)) static int bcm_iproc_i2c_remove(struct platform_device *pdev)
{
 struct bcm_iproc_i2c_dev *iproc_i2c = platform_get_drvdata(pdev);

 if (iproc_i2c->irq) {




  iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, 0);
  iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
  synchronize_irq(iproc_i2c->irq);
 }

 i2c_del_adapter(&iproc_i2c->adapter);
 bcm_iproc_i2c_enable_disable(iproc_i2c, 0);

 return 0;
}
