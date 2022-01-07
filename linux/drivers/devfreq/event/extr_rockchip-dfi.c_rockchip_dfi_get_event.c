
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_dfi {TYPE_1__* ch_usage; } ;
struct devfreq_event_dev {int dummy; } ;
struct devfreq_event_data {int total_count; int load_count; } ;
struct TYPE_2__ {int total; int access; } ;


 struct rockchip_dfi* devfreq_event_get_drvdata (struct devfreq_event_dev*) ;
 int rockchip_dfi_get_busier_ch (struct devfreq_event_dev*) ;

__attribute__((used)) static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
      struct devfreq_event_data *edata)
{
 struct rockchip_dfi *info = devfreq_event_get_drvdata(edev);
 int busier_ch;

 busier_ch = rockchip_dfi_get_busier_ch(edev);

 edata->load_count = info->ch_usage[busier_ch].access;
 edata->total_count = info->ch_usage[busier_ch].total;

 return 0;
}
