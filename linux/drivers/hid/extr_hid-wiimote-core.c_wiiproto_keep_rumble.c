
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef int __u8 ;


 int WIIPROTO_FLAG_RUMBLE ;

__attribute__((used)) static inline void wiiproto_keep_rumble(struct wiimote_data *wdata, __u8 *cmd1)
{
 if (wdata->state.flags & WIIPROTO_FLAG_RUMBLE)
  *cmd1 |= 0x01;
}
