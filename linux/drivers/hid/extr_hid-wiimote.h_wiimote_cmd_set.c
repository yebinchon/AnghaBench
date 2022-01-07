
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; int opt; int ready; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int __u32 ;


 int reinit_completion (int *) ;

__attribute__((used)) static inline void wiimote_cmd_set(struct wiimote_data *wdata, int cmd,
        __u32 opt)
{
 reinit_completion(&wdata->state.ready);
 wdata->state.cmd = cmd;
 wdata->state.opt = opt;
}
