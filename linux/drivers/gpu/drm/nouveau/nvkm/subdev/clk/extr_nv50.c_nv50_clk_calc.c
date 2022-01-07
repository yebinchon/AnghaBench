
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;
struct nvkm_cstate {int* domain; } ;
struct nvkm_clk {int dummy; } ;
struct nv50_clk_hwsq {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_clk {TYPE_1__ base; struct nv50_clk_hwsq hwsq; } ;


 int ERANGE ;
 scalar_t__ abs (int const) ;
 int calc_div (int const,int const,int*) ;
 int calc_pll (struct nv50_clk*,int,int const,int*,int*,int*) ;
 int clk_init (struct nv50_clk_hwsq*,struct nvkm_subdev*) ;
 int clk_mask (struct nv50_clk_hwsq*,int ,int,int) ;
 int clk_nsec (struct nv50_clk_hwsq*,int) ;
 scalar_t__ clk_same (int const,int) ;
 int clk_setf (struct nv50_clk_hwsq*,int,int) ;
 int clk_wait (struct nv50_clk_hwsq*,int,int) ;
 int clk_wr32 (struct nv50_clk_hwsq*,int ,int) ;
 int divs ;
 int fifo ;
 int mast ;
 struct nv50_clk* nv50_clk (struct nvkm_clk*) ;
 size_t nv_clk_src_core ;
 size_t nv_clk_src_dom6 ;
 int nv_clk_src_hclk ;
 int nv_clk_src_hclkm3d2 ;
 int nv_clk_src_href ;
 size_t nv_clk_src_shader ;
 size_t nv_clk_src_vdec ;
 int nvkm_clk_read (TYPE_1__*,int ) ;
 int * nvpll ;
 int read_pll (struct nv50_clk*,int) ;
 int * spll ;

int
nv50_clk_calc(struct nvkm_clk *base, struct nvkm_cstate *cstate)
{
 struct nv50_clk *clk = nv50_clk(base);
 struct nv50_clk_hwsq *hwsq = &clk->hwsq;
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 const int shader = cstate->domain[nv_clk_src_shader];
 const int core = cstate->domain[nv_clk_src_core];
 const int vdec = cstate->domain[nv_clk_src_vdec];
 const int dom6 = cstate->domain[nv_clk_src_dom6];
 u32 mastm = 0, mastv = 0;
 u32 divsm = 0, divsv = 0;
 int N, M, P1, P2;
 int freq, out;


 out = clk_init(hwsq, subdev);
 if (out)
  return out;

 clk_wr32(hwsq, fifo, 0x00000001);
 clk_nsec(hwsq, 8000);
 clk_setf(hwsq, 0x10, 0x00);
 clk_wait(hwsq, 0x00, 0x01);





 if (vdec) {

  freq = calc_div(core, vdec, &P1);


  if (device->chipset != 0x98)
   out = read_pll(clk, 0x004030);
  else
   out = nvkm_clk_read(&clk->base, nv_clk_src_hclkm3d2);
  out = calc_div(out, vdec, &P2);


  if (abs(vdec - freq) <= abs(vdec - out)) {
   if (device->chipset != 0x98)
    mastv |= 0x00000c00;
   divsv |= P1 << 8;
  } else {
   mastv |= 0x00000800;
   divsv |= P2 << 8;
  }

  mastm |= 0x00000c00;
  divsm |= 0x00000700;
 }




 if (dom6) {
  if (clk_same(dom6, nvkm_clk_read(&clk->base, nv_clk_src_href))) {
   mastv |= 0x00000000;
  } else
  if (clk_same(dom6, nvkm_clk_read(&clk->base, nv_clk_src_hclk))) {
   mastv |= 0x08000000;
  } else {
   freq = nvkm_clk_read(&clk->base, nv_clk_src_hclk) * 3;
   calc_div(freq, dom6, &P1);

   mastv |= 0x0c000000;
   divsv |= P1;
  }

  mastm |= 0x0c000000;
  divsm |= 0x00000007;
 }




 clk_mask(hwsq, mast, mastm, 0x00000000);
 clk_mask(hwsq, divs, divsm, divsv);
 clk_mask(hwsq, mast, mastm, mastv);




 if (device->chipset < 0x92)
  clk_mask(hwsq, mast, 0x001000b0, 0x00100080);
 else
  clk_mask(hwsq, mast, 0x000000b3, 0x00000081);


 freq = calc_pll(clk, 0x4028, core, &N, &M, &P1);
 if (freq == 0)
  return -ERANGE;

 clk_mask(hwsq, nvpll[0], 0xc03f0100,
     0x80000000 | (P1 << 19) | (P1 << 16));
 clk_mask(hwsq, nvpll[1], 0x0000ffff, (N << 8) | M);







 if (P1-- && shader == (core << 1)) {
  clk_mask(hwsq, spll[0], 0xc03f0100, (P1 << 19) | (P1 << 16));
  clk_mask(hwsq, mast, 0x00100033, 0x00000023);
 } else {
  freq = calc_pll(clk, 0x4020, shader, &N, &M, &P1);
  if (freq == 0)
   return -ERANGE;

  clk_mask(hwsq, spll[0], 0xc03f0100,
     0x80000000 | (P1 << 19) | (P1 << 16));
  clk_mask(hwsq, spll[1], 0x0000ffff, (N << 8) | M);
  clk_mask(hwsq, mast, 0x00100033, 0x00000033);
 }


 clk_setf(hwsq, 0x10, 0x01);
 clk_wait(hwsq, 0x00, 0x00);
 clk_wr32(hwsq, fifo, 0x00000000);
 return 0;
}
