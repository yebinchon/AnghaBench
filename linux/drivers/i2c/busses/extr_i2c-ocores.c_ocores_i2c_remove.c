
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dummy; } ;
struct ocores_i2c {int clk; int adap; } ;


 int IS_ERR (int ) ;
 int OCI2C_CONTROL ;
 int OCI2C_CTRL_EN ;
 int OCI2C_CTRL_IEN ;
 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 int oc_getreg (struct ocores_i2c*,int ) ;
 int oc_setreg (struct ocores_i2c*,int ,int) ;
 struct ocores_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ocores_i2c_remove(struct platform_device *pdev)
{
 struct ocores_i2c *i2c = platform_get_drvdata(pdev);
 u8 ctrl = oc_getreg(i2c, OCI2C_CONTROL);


 ctrl &= ~(OCI2C_CTRL_EN | OCI2C_CTRL_IEN);
 oc_setreg(i2c, OCI2C_CONTROL, ctrl);


 i2c_del_adapter(&i2c->adap);

 if (!IS_ERR(i2c->clk))
  clk_disable_unprepare(i2c->clk);

 return 0;
}
