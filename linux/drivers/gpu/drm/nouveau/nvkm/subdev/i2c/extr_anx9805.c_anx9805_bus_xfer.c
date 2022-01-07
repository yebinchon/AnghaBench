
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_i2c_bus {int dummy; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct anx9805_pad {int addr; TYPE_1__* bus; } ;
struct anx9805_bus {int addr; struct anx9805_pad* pad; } ;
struct TYPE_2__ {struct i2c_adapter i2c; } ;


 int ETIMEDOUT ;
 int I2C_M_RD ;
 struct anx9805_bus* anx9805_bus (struct nvkm_i2c_bus*) ;
 int mdelay (int) ;
 int nvkm_rdi2cr (struct i2c_adapter*,int ,int) ;
 int nvkm_wri2cr (struct i2c_adapter*,int ,int,int) ;

__attribute__((used)) static int
anx9805_bus_xfer(struct nvkm_i2c_bus *base, struct i2c_msg *msgs, int num)
{
 struct anx9805_bus *bus = anx9805_bus(base);
 struct anx9805_pad *pad = bus->pad;
 struct i2c_adapter *adap = &pad->bus->i2c;
 struct i2c_msg *msg = msgs;
 int ret = -ETIMEDOUT;
 int i, j, cnt = num;
 u8 seg = 0x00, off = 0x00, tmp;

 tmp = nvkm_rdi2cr(adap, pad->addr, 0x07) & ~0x10;
 nvkm_wri2cr(adap, pad->addr, 0x07, tmp | 0x10);
 nvkm_wri2cr(adap, pad->addr, 0x07, tmp);
 nvkm_wri2cr(adap, bus->addr, 0x43, 0x05);
 mdelay(5);

 while (cnt--) {
  if ( (msg->flags & I2C_M_RD) && msg->addr == 0x50) {
   nvkm_wri2cr(adap, bus->addr, 0x40, msg->addr << 1);
   nvkm_wri2cr(adap, bus->addr, 0x41, seg);
   nvkm_wri2cr(adap, bus->addr, 0x42, off);
   nvkm_wri2cr(adap, bus->addr, 0x44, msg->len);
   nvkm_wri2cr(adap, bus->addr, 0x45, 0x00);
   nvkm_wri2cr(adap, bus->addr, 0x43, 0x01);
   for (i = 0; i < msg->len; i++) {
    j = 0;
    while (nvkm_rdi2cr(adap, bus->addr, 0x46) & 0x10) {
     mdelay(5);
     if (j++ == 32)
      goto done;
    }
    msg->buf[i] = nvkm_rdi2cr(adap, bus->addr, 0x47);
   }
  } else
  if (!(msg->flags & I2C_M_RD)) {
   if (msg->addr == 0x50 && msg->len == 0x01) {
    off = msg->buf[0];
   } else
   if (msg->addr == 0x30 && msg->len == 0x01) {
    seg = msg->buf[0];
   } else
    goto done;
  } else {
   goto done;
  }
  msg++;
 }

 ret = num;
done:
 nvkm_wri2cr(adap, bus->addr, 0x43, 0x00);
 return ret;
}
