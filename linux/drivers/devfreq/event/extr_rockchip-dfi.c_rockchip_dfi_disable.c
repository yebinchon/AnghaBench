
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dfi {int clk; } ;
struct devfreq_event_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rockchip_dfi* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int rockchip_dfi_stop_hardware_counter (struct devfreq_event_dev*) ;

__attribute__((used)) static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
{
 struct rockchip_dfi *info = devfreq_event_get_drvdata(edev);

 rockchip_dfi_stop_hardware_counter(edev);
 clk_disable_unprepare(info->clk);

 return 0;
}
