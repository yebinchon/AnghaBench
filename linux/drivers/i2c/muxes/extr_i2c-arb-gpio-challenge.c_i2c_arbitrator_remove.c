
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_mux_core {int parent; } ;


 int i2c_mux_del_adapters (struct i2c_mux_core*) ;
 int i2c_put_adapter (int ) ;
 struct i2c_mux_core* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_arbitrator_remove(struct platform_device *pdev)
{
 struct i2c_mux_core *muxc = platform_get_drvdata(pdev);

 i2c_mux_del_adapters(muxc);
 i2c_put_adapter(muxc->parent);
 return 0;
}
