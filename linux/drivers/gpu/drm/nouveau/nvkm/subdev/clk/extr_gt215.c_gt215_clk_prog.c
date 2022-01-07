
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int dummy; } ;
struct gt215_clk_info {scalar_t__ pll; } ;
struct gt215_clk {int base; struct gt215_clk_info* eng; } ;


 int EBUSY ;
 struct gt215_clk* gt215_clk (struct nvkm_clk*) ;
 int gt215_clk_post (int *,unsigned long*) ;
 int gt215_clk_pre (int *,unsigned long*) ;
 size_t nv_clk_src_core ;
 size_t nv_clk_src_core_intm ;
 int nv_clk_src_disp ;
 int nv_clk_src_shader ;
 int nv_clk_src_vdec ;
 int prog_clk (struct gt215_clk*,int,int ) ;
 int prog_core (struct gt215_clk*,size_t) ;
 int prog_host (struct gt215_clk*) ;
 int prog_pll (struct gt215_clk*,int,int,int ) ;

__attribute__((used)) static int
gt215_clk_prog(struct nvkm_clk *base)
{
 struct gt215_clk *clk = gt215_clk(base);
 struct gt215_clk_info *core = &clk->eng[nv_clk_src_core];
 int ret = 0;
 unsigned long flags;
 unsigned long *f = &flags;

 ret = gt215_clk_pre(&clk->base, f);
 if (ret)
  goto out;

 if (core->pll)
  prog_core(clk, nv_clk_src_core_intm);

 prog_core(clk, nv_clk_src_core);
 prog_pll(clk, 0x01, 0x004220, nv_clk_src_shader);
 prog_clk(clk, 0x20, nv_clk_src_disp);
 prog_clk(clk, 0x21, nv_clk_src_vdec);
 prog_host(clk);

out:
 if (ret == -EBUSY)
  f = ((void*)0);

 gt215_clk_post(&clk->base, f);
 return ret;
}
