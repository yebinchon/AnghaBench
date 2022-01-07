
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct picolcd_data {TYPE_1__* fb_info; } ;
struct TYPE_2__ {int deferred_work; } ;


 int schedule_delayed_work (int *,int ) ;

void picolcd_fb_refresh(struct picolcd_data *data)
{
 if (data->fb_info)
  schedule_delayed_work(&data->fb_info->deferred_work, 0);
}
