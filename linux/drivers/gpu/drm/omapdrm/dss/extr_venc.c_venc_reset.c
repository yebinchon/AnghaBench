
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int dummy; } ;


 int DSSERR (char*) ;
 int VENC_F_CONTROL ;
 int msleep (int) ;
 int venc_read_reg (struct venc_device*,int ) ;
 int venc_write_reg (struct venc_device*,int ,int) ;

__attribute__((used)) static void venc_reset(struct venc_device *venc)
{
 int t = 1000;

 venc_write_reg(venc, VENC_F_CONTROL, 1<<8);
 while (venc_read_reg(venc, VENC_F_CONTROL) & (1<<8)) {
  if (--t == 0) {
   DSSERR("Failed to reset venc\n");
   return;
  }
 }






}
