
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ps2dev {int nak; int flags; int wait; scalar_t__ cmdcnt; TYPE_1__* serio; } ;
struct TYPE_2__ {int dev; } ;


 int PS2_FLAG_ACK ;
 int PS2_FLAG_ACK_CMD ;
 int PS2_FLAG_CMD ;
 int PS2_FLAG_CMD1 ;
 int PS2_FLAG_NAK ;
 int PS2_FLAG_WAITID ;



 int dev_dbg (int *,char*,int) ;
 int ps2_handle_response (struct ps2dev*,int) ;
 int wake_up (int *) ;

bool ps2_handle_ack(struct ps2dev *ps2dev, u8 data)
{
 switch (data) {
 case 130:
  ps2dev->nak = 0;
  break;

 case 128:
  ps2dev->flags |= PS2_FLAG_NAK;
  ps2dev->nak = 128;
  break;

 case 129:
  if (ps2dev->flags & PS2_FLAG_NAK) {
   ps2dev->flags &= ~PS2_FLAG_NAK;
   ps2dev->nak = 129;
   break;
  }






 case 0x00:
 case 0x03:
 case 0x04:
  if (ps2dev->flags & PS2_FLAG_WAITID) {
   ps2dev->nak = 0;
   break;
  }

 default:
  dev_dbg(&ps2dev->serio->dev, "unexpected %#02x\n", data);
  ps2dev->flags &= ~PS2_FLAG_WAITID;
  return ps2dev->flags & PS2_FLAG_ACK_CMD;
 }

 if (!ps2dev->nak) {
  ps2dev->flags &= ~PS2_FLAG_NAK;
  if (ps2dev->cmdcnt)
   ps2dev->flags |= PS2_FLAG_CMD | PS2_FLAG_CMD1;
 }

 ps2dev->flags &= ~PS2_FLAG_ACK;
 wake_up(&ps2dev->wait);

 if (data != 130)
  ps2_handle_response(ps2dev, data);

 return 1;
}
