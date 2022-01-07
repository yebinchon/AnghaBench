
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int len; int flags; int addr; int * buf; } ;
struct i2c_adapter {int dummy; } ;
struct brcmstb_i2c_dev {int device; } ;


 int COND_NOSTART ;
 int COND_NOSTOP ;
 int COND_RESTART ;
 int COND_START_STOP ;
 int I2C_M_NOSTART ;
 int brcmstb_i2c_do_addr (struct brcmstb_i2c_dev*,struct i2c_msg*) ;
 int brcmstb_i2c_get_xfersz (struct brcmstb_i2c_dev*) ;
 int brcmstb_i2c_xfer_bsc_data (struct brcmstb_i2c_dev*,int *,int,struct i2c_msg*) ;
 int brcmstb_set_i2c_start_stop (struct brcmstb_i2c_dev*,int) ;
 int dev_dbg (int ,char*,int,int,int,...) ;
 struct brcmstb_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int min (int,int) ;

__attribute__((used)) static int brcmstb_i2c_xfer(struct i2c_adapter *adapter,
       struct i2c_msg msgs[], int num)
{
 struct brcmstb_i2c_dev *dev = i2c_get_adapdata(adapter);
 struct i2c_msg *pmsg;
 int rc = 0;
 int i;
 int bytes_to_xfer;
 u8 *tmp_buf;
 int len = 0;
 int xfersz = brcmstb_i2c_get_xfersz(dev);
 u32 cond, cond_per_msg;


 for (i = 0; i < num; i++) {
  pmsg = &msgs[i];
  len = pmsg->len;
  tmp_buf = pmsg->buf;

  dev_dbg(dev->device,
   "msg# %d/%d flg %x buf %x len %d\n", i,
   num - 1, pmsg->flags,
   pmsg->buf ? pmsg->buf[0] : '0', pmsg->len);

  if (i < (num - 1) && (msgs[i + 1].flags & I2C_M_NOSTART))
   cond = ~COND_START_STOP;
  else
   cond = COND_RESTART | COND_NOSTOP;

  brcmstb_set_i2c_start_stop(dev, cond);


  if (!(pmsg->flags & I2C_M_NOSTART)) {
   rc = brcmstb_i2c_do_addr(dev, pmsg);
   if (rc < 0) {
    dev_dbg(dev->device,
     "NACK for addr %2.2x msg#%d rc = %d\n",
     pmsg->addr, i, rc);
    goto out;
   }
  }

  cond_per_msg = cond;


  while (len) {
   bytes_to_xfer = min(len, xfersz);

   if (len <= xfersz) {
    if (i == (num - 1))
     cond_per_msg = cond_per_msg &
      ~(COND_RESTART | COND_NOSTOP);
    else
     cond_per_msg = cond;
   } else {
    cond_per_msg = (cond_per_msg & ~COND_RESTART) |
     COND_NOSTOP;
   }

   brcmstb_set_i2c_start_stop(dev, cond_per_msg);

   rc = brcmstb_i2c_xfer_bsc_data(dev, tmp_buf,
             bytes_to_xfer, pmsg);
   if (rc < 0)
    goto out;

   len -= bytes_to_xfer;
   tmp_buf += bytes_to_xfer;

   cond_per_msg = COND_NOSTART | COND_NOSTOP;
  }
 }

 rc = num;
out:
 return rc;

}
