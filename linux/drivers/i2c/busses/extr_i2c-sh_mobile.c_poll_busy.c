
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sh_mobile_i2c_data {int sr; int dev; } ;


 int EAGAIN ;
 int ENXIO ;
 int ETIMEDOUT ;
 int ICSR ;
 int ICSR_AL ;
 int ICSR_BUSY ;
 int ICSR_TACK ;
 int dev_dbg (int ,char*,int,int) ;
 int iic_rd (struct sh_mobile_i2c_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int poll_busy(struct sh_mobile_i2c_data *pd)
{
 int i;

 for (i = 1000; i; i--) {
  u_int8_t val = iic_rd(pd, ICSR);

  dev_dbg(pd->dev, "val 0x%02x pd->sr 0x%02x\n", val, pd->sr);





  if (!(val & ICSR_BUSY)) {

   val |= pd->sr;
   if (val & ICSR_TACK)
    return -ENXIO;
   if (val & ICSR_AL)
    return -EAGAIN;
   break;
  }

  udelay(10);
 }

 return i ? 0 : -ETIMEDOUT;
}
