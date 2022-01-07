
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
typedef int cmd ;
typedef scalar_t__ __u8 ;


 scalar_t__ WIIPROTO_REQ_SREQ ;
 int wiimote_queue (struct wiimote_data*,scalar_t__*,int) ;
 int wiiproto_keep_rumble (struct wiimote_data*,scalar_t__*) ;

void wiiproto_req_status(struct wiimote_data *wdata)
{
 __u8 cmd[2];

 cmd[0] = WIIPROTO_REQ_SREQ;
 cmd[1] = 0;

 wiiproto_keep_rumble(wdata, &cmd[1]);
 wiimote_queue(wdata, cmd, sizeof(cmd));
}
