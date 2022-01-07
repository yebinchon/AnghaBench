
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiimote_data {TYPE_1__* input; int rumble_worker; } ;
struct wiimod_ops {int dummy; } ;
struct TYPE_2__ {int ffbit; } ;


 int ENOMEM ;
 int FF_RUMBLE ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ input_ff_create_memless (TYPE_1__*,int *,int ) ;
 int set_bit (int ,int ) ;
 int wiimod_rumble_play ;
 int wiimod_rumble_worker ;

__attribute__((used)) static int wiimod_rumble_probe(const struct wiimod_ops *ops,
          struct wiimote_data *wdata)
{
 INIT_WORK(&wdata->rumble_worker, wiimod_rumble_worker);

 set_bit(FF_RUMBLE, wdata->input->ffbit);
 if (input_ff_create_memless(wdata->input, ((void*)0), wiimod_rumble_play))
  return -ENOMEM;

 return 0;
}
