
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int cmdcnt; int flags; int wait; int * cmdbuf; } ;


 int PS2_FLAG_CMD ;
 int PS2_FLAG_CMD1 ;
 int wake_up (int *) ;

bool ps2_handle_response(struct ps2dev *ps2dev, u8 data)
{
 if (ps2dev->cmdcnt)
  ps2dev->cmdbuf[--ps2dev->cmdcnt] = data;

 if (ps2dev->flags & PS2_FLAG_CMD1) {
  ps2dev->flags &= ~PS2_FLAG_CMD1;
  if (ps2dev->cmdcnt)
   wake_up(&ps2dev->wait);
 }

 if (!ps2dev->cmdcnt) {
  ps2dev->flags &= ~PS2_FLAG_CMD;
  wake_up(&ps2dev->wait);
 }

 return 1;
}
