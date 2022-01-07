
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int dummy; } ;
struct nv50_clk {int hwsq; } ;


 int clk_exec (int *,int) ;
 struct nv50_clk* nv50_clk (struct nvkm_clk*) ;

void
nv50_clk_tidy(struct nvkm_clk *base)
{
 struct nv50_clk *clk = nv50_clk(base);
 clk_exec(&clk->hwsq, 0);
}
