
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_i2c_aux {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_9__ {TYPE_3__* pad; } ;
struct gm200_i2c_aux {int ch; TYPE_4__ base; } ;
struct TYPE_8__ {TYPE_2__* i2c; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;


 int AUX_ERR (TYPE_4__*,char*,int) ;
 int AUX_TRACE (TYPE_4__*,char*,...) ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 struct gm200_i2c_aux* gm200_i2c_aux (struct nvkm_i2c_aux*) ;
 int gm200_i2c_aux_fini (struct gm200_i2c_aux*) ;
 int gm200_i2c_aux_init (struct gm200_i2c_aux*) ;
 int memcpy (int*,int*,int) ;
 int nvkm_mask (struct nvkm_device*,int const,int ,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int const) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int) ;
 int udelay (int) ;

__attribute__((used)) static int
gm200_i2c_aux_xfer(struct nvkm_i2c_aux *obj, bool retry,
     u8 type, u32 addr, u8 *data, u8 *size)
{
 struct gm200_i2c_aux *aux = gm200_i2c_aux(obj);
 struct nvkm_device *device = aux->base.pad->i2c->subdev.device;
 const u32 base = aux->ch * 0x50;
 u32 ctrl, stat, timeout, retries = 0;
 u32 xbuf[4] = {};
 int ret, i;

 AUX_TRACE(&aux->base, "%d: %08x %d", type, addr, *size);

 ret = gm200_i2c_aux_init(aux);
 if (ret < 0)
  goto out;

 stat = nvkm_rd32(device, 0x00d958 + base);
 if (!(stat & 0x10000000)) {
  AUX_TRACE(&aux->base, "sink not detected");
  ret = -ENXIO;
  goto out;
 }

 if (!(type & 1)) {
  memcpy(xbuf, data, *size);
  for (i = 0; i < 16; i += 4) {
   AUX_TRACE(&aux->base, "wr %08x", xbuf[i / 4]);
   nvkm_wr32(device, 0x00d930 + base + i, xbuf[i / 4]);
  }
 }

 ctrl = nvkm_rd32(device, 0x00d954 + base);
 ctrl &= ~0x0001f1ff;
 ctrl |= type << 12;
 ctrl |= (*size ? (*size - 1) : 0x00000100);
 nvkm_wr32(device, 0x00d950 + base, addr);


 do {

  nvkm_wr32(device, 0x00d954 + base, 0x80000000 | ctrl);
  nvkm_wr32(device, 0x00d954 + base, 0x00000000 | ctrl);
  if (retries)
   udelay(400);


  nvkm_wr32(device, 0x00d954 + base, 0x00010000 | ctrl);

  timeout = 1000;
  do {
   ctrl = nvkm_rd32(device, 0x00d954 + base);
   udelay(1);
   if (!timeout--) {
    AUX_ERR(&aux->base, "timeout %08x", ctrl);
    ret = -EIO;
    goto out;
   }
  } while (ctrl & 0x00010000);
  ret = 0;


  stat = nvkm_mask(device, 0x00d958 + base, 0, 0);
  if ((stat & 0x000f0000) == 0x00080000 ||
      (stat & 0x000f0000) == 0x00020000)
   ret = 1;
  if ((stat & 0x00000100))
   ret = -ETIMEDOUT;
  if ((stat & 0x00000e00))
   ret = -EIO;

  AUX_TRACE(&aux->base, "%02d %08x %08x", retries, ctrl, stat);
 } while (ret && retry && retries++ < 32);

 if (type & 1) {
  for (i = 0; i < 16; i += 4) {
   xbuf[i / 4] = nvkm_rd32(device, 0x00d940 + base + i);
   AUX_TRACE(&aux->base, "rd %08x", xbuf[i / 4]);
  }
  memcpy(data, xbuf, *size);
  *size = stat & 0x0000001f;
 }

out:
 gm200_i2c_aux_fini(aux);
 return ret < 0 ? ret : (stat & 0x000f0000) >> 16;
}
