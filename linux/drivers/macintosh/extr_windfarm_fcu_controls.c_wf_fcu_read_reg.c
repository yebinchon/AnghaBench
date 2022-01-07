
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_fcu_priv {int lock; int i2c; } ;


 int EIO ;
 int ENODEV ;
 int i2c_master_recv (int ,unsigned char*,int) ;
 int i2c_master_send (int ,unsigned char*,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int wf_fcu_read_reg(struct wf_fcu_priv *pv, int reg,
      unsigned char *buf, int nb)
{
 int tries, nr, nw;

 mutex_lock(&pv->lock);

 buf[0] = reg;
 tries = 0;
 for (;;) {
  nw = i2c_master_send(pv->i2c, buf, 1);
  if (nw > 0 || (nw < 0 && nw != -EIO) || tries >= 100)
   break;
  msleep(10);
  ++tries;
 }
 if (nw <= 0) {
  pr_err("Failure writing address to FCU: %d", nw);
  nr = nw;
  goto bail;
 }
 tries = 0;
 for (;;) {
  nr = i2c_master_recv(pv->i2c, buf, nb);
  if (nr > 0 || (nr < 0 && nr != -ENODEV) || tries >= 100)
   break;
  msleep(10);
  ++tries;
 }
 if (nr <= 0)
  pr_err("wf_fcu: Failure reading data from FCU: %d", nw);
 bail:
 mutex_unlock(&pv->lock);
 return nr;
}
