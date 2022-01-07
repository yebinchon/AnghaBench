
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cht_wc_extcon_data {int dummy; } ;


 int cht_wc_extcon_sw_control (struct cht_wc_extcon_data*,int) ;
 struct cht_wc_extcon_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cht_wc_extcon_remove(struct platform_device *pdev)
{
 struct cht_wc_extcon_data *ext = platform_get_drvdata(pdev);

 cht_wc_extcon_sw_control(ext, 0);

 return 0;
}
