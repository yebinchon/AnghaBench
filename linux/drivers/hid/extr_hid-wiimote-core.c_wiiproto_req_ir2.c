
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
typedef int cmd ;
typedef int __u8 ;


 int WIIPROTO_REQ_IR2 ;
 int wiimote_queue (struct wiimote_data*,int *,int) ;
 int wiiproto_keep_rumble (struct wiimote_data*,int *) ;

void wiiproto_req_ir2(struct wiimote_data *wdata, __u8 flags)
{
 __u8 cmd[2];

 cmd[0] = WIIPROTO_REQ_IR2;
 cmd[1] = flags;

 wiiproto_keep_rumble(wdata, &cmd[1]);
 wiimote_queue(wdata, cmd, sizeof(cmd));
}
