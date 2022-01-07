
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_pnx_algo_data {int clk; int adapter; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct i2c_pnx_algo_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_pnx_remove(struct platform_device *pdev)
{
 struct i2c_pnx_algo_data *alg_data = platform_get_drvdata(pdev);

 i2c_del_adapter(&alg_data->adapter);
 clk_disable_unprepare(alg_data->clk);

 return 0;
}
