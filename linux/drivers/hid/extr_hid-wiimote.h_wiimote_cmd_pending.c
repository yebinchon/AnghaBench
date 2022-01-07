
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd; scalar_t__ opt; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef scalar_t__ __u32 ;



__attribute__((used)) static inline bool wiimote_cmd_pending(struct wiimote_data *wdata, int cmd,
        __u32 opt)
{
 return wdata->state.cmd == cmd && wdata->state.opt == opt;
}
