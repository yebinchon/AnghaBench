
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_fcu_priv {int i2c; } ;


 int EIO ;
 int i2c_master_send (int ,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int msleep (int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int wf_fcu_write_reg(struct wf_fcu_priv *pv, int reg,
       const unsigned char *ptr, int nb)
{
 int tries, nw;
 unsigned char buf[16];

 buf[0] = reg;
 memcpy(buf+1, ptr, nb);
 ++nb;
 tries = 0;
 for (;;) {
  nw = i2c_master_send(pv->i2c, buf, nb);
  if (nw > 0 || (nw < 0 && nw != -EIO) || tries >= 100)
   break;
  msleep(10);
  ++tries;
 }
 if (nw < 0)
  pr_err("wf_fcu: Failure writing to FCU: %d", nw);
 return nw;
}
