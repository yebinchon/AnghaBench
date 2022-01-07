
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int cfgopt; struct nvkm_clk* clk; struct nvkm_bios* bios; } ;
struct nvkm_clk {int dummy; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_M0205T {scalar_t__ freq; int member_0; } ;
struct gt215_ramfuc {int dummy; } ;
struct TYPE_6__ {TYPE_4__* fb; TYPE_1__* func; } ;
struct gt215_ltrain {int r_100720; int r_1111e0; int r_111400; int state; } ;
struct gt215_ram {TYPE_2__ base; struct gt215_ramfuc fuc; struct gt215_ltrain ltrain; } ;
struct TYPE_7__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {int (* calc ) (TYPE_2__*,int) ;} ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int NVA3_TRAIN_DONE ;
 int NVA3_TRAIN_EXEC ;
 int NVA3_TRAIN_UNSUPPORTED ;
 int gt215_clk_post (struct nvkm_clk*,unsigned long*) ;
 int gt215_clk_pre (struct nvkm_clk*,unsigned long*) ;
 int gt215_link_train_calc (int*,struct gt215_ltrain*) ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;
 int nv_clk_src_mem ;
 int nvbios_M0205Tp (struct nvkm_bios*,int *,int *,int *,int *,int *,int *,struct nvbios_M0205T*) ;
 int nvkm_boolopt (int ,char*,int) ;
 unsigned int nvkm_clk_read (struct nvkm_clk*,int ) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int,...) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int ram_exec (struct gt215_ramfuc*,int) ;
 int ram_mask (struct gt215_ramfuc*,int,int,int) ;
 int ram_nsec (struct gt215_ramfuc*,int) ;
 int ram_nuke (struct gt215_ramfuc*,int) ;
 int ram_rd32 (struct gt215_ramfuc*,int) ;
 int ram_train (struct gt215_ramfuc*) ;
 int ram_train_result (TYPE_4__*,int*,int) ;
 int ram_wait (struct gt215_ramfuc*,int,int,int,int) ;
 int ram_wait_vblank (struct gt215_ramfuc*) ;
 int ram_wr32 (struct gt215_ramfuc*,int,int) ;
 int stub1 (TYPE_2__*,int) ;
 int stub2 (TYPE_2__*,unsigned int) ;

__attribute__((used)) static int
gt215_link_train(struct gt215_ram *ram)
{
 struct gt215_ltrain *train = &ram->ltrain;
 struct gt215_ramfuc *fuc = &ram->fuc;
 struct nvkm_subdev *subdev = &ram->base.fb->subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_bios *bios = device->bios;
 struct nvkm_clk *clk = device->clk;
 u32 *result, r1700;
 int ret, i;
 struct nvbios_M0205T M0205T = { 0 };
 u8 ver, hdr, cnt, len, snr, ssz;
 unsigned int clk_current;
 unsigned long flags;
 unsigned long *f = &flags;

 if (nvkm_boolopt(device->cfgopt, "NvMemExec", 1) != 1)
  return -ENOSYS;


 result = kmalloc_array(64, sizeof(u32), GFP_KERNEL);
 if (!result)
  return -ENOMEM;

 train->state = NVA3_TRAIN_EXEC;


 nvbios_M0205Tp(bios, &ver, &hdr, &cnt, &len, &snr, &ssz, &M0205T);
 if (M0205T.freq == 0) {
  kfree(result);
  return -ENOENT;
 }

 clk_current = nvkm_clk_read(clk, nv_clk_src_mem);

 ret = gt215_clk_pre(clk, f);
 if (ret)
  goto out;


 ret = ram->base.func->calc(&ram->base, (u32) M0205T.freq * 1000);
 if (ret)
  goto out;


 nvkm_wr32(device, 0x111400, 0x00000000);

 nvkm_mask(device, 0x100674, 0x0000ffff, 0x00000000);
 nvkm_mask(device, 0x1005e4, 0x0000ffff, 0x00000000);
 nvkm_mask(device, 0x100b0c, 0x000000ff, 0x00000000);
 nvkm_wr32(device, 0x100c04, 0x00000400);


 r1700 = ram_rd32(fuc, 0x001700);

 ram_mask(fuc, 0x100200, 0x00000800, 0x00000000);
 ram_wr32(fuc, 0x611200, 0x3300);
 ram_wait_vblank(fuc);
 ram_wait(fuc, 0x611200, 0x00000003, 0x00000000, 500000);
 ram_mask(fuc, 0x001610, 0x00000083, 0x00000003);
 ram_mask(fuc, 0x100080, 0x00000020, 0x00000000);
 ram_mask(fuc, 0x10f804, 0x80000000, 0x00000000);
 ram_wr32(fuc, 0x001700, 0x00000000);

 ram_train(fuc);


 ram_mask(fuc, 0x10f804, 0x80000000, 0x80000000);
 ram_wr32(fuc, 0x10053c, 0x0);
 ram_wr32(fuc, 0x100720, train->r_100720);
 ram_wr32(fuc, 0x1111e0, train->r_1111e0);
 ram_wr32(fuc, 0x111400, train->r_111400);
 ram_nuke(fuc, 0x100080);
 ram_mask(fuc, 0x100080, 0x00000020, 0x00000020);
 ram_nsec(fuc, 1000);

 ram_wr32(fuc, 0x001700, r1700);
 ram_mask(fuc, 0x001610, 0x00000083, 0x00000080);
 ram_wr32(fuc, 0x611200, 0x3330);
 ram_mask(fuc, 0x100200, 0x00000800, 0x00000800);

 ram_exec(fuc, 1);

 ram->base.func->calc(&ram->base, clk_current);
 ram_exec(fuc, 1);


 nvkm_mask(device, 0x616308, 0x10, 0x10);
 nvkm_mask(device, 0x616b08, 0x10, 0x10);

 gt215_clk_post(clk, f);

 ram_train_result(ram->base.fb, result, 64);
 for (i = 0; i < 64; i++)
  nvkm_debug(subdev, "Train: %08x", result[i]);
 gt215_link_train_calc(result, train);

 nvkm_debug(subdev, "Train: %08x %08x %08x", train->r_100720,
     train->r_1111e0, train->r_111400);

 kfree(result);

 train->state = NVA3_TRAIN_DONE;

 return ret;

out:
 if(ret == -EBUSY)
  f = ((void*)0);

 train->state = NVA3_TRAIN_UNSUPPORTED;

 gt215_clk_post(clk, f);
 kfree(result);
 return ret;
}
