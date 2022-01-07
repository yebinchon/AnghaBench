
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ready; int cmd; } ;
struct wiimote_data {TYPE_1__ state; } ;


 int WIIPROTO_REQ_MAX ;
 int complete (int *) ;

__attribute__((used)) static inline void wiimote_cmd_abort(struct wiimote_data *wdata)
{



 wdata->state.cmd = WIIPROTO_REQ_MAX;
 complete(&wdata->state.ready);
}
