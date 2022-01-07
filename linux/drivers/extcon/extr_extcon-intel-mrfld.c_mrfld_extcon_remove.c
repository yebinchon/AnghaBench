
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mrfld_extcon_data {int dummy; } ;


 int mrfld_extcon_sw_control (struct mrfld_extcon_data*,int) ;
 struct mrfld_extcon_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mrfld_extcon_remove(struct platform_device *pdev)
{
 struct mrfld_extcon_data *data = platform_get_drvdata(pdev);

 mrfld_extcon_sw_control(data, 0);

 return 0;
}
