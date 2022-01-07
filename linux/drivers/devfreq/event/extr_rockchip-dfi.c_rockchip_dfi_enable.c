
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dfi {int clk; } ;
struct devfreq_event_dev {int dev; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 struct rockchip_dfi* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int rockchip_dfi_start_hardware_counter (struct devfreq_event_dev*) ;

__attribute__((used)) static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
{
 struct rockchip_dfi *info = devfreq_event_get_drvdata(edev);
 int ret;

 ret = clk_prepare_enable(info->clk);
 if (ret) {
  dev_err(&edev->dev, "failed to enable dfi clk: %d\n", ret);
  return ret;
 }

 rockchip_dfi_start_hardware_counter(edev);
 return 0;
}
