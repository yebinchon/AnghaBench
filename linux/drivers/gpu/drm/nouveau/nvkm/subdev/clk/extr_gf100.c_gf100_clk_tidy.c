
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int dummy; } ;
struct gf100_clk {int eng; } ;


 struct gf100_clk* gf100_clk (struct nvkm_clk*) ;
 int memset (int ,int,int) ;

__attribute__((used)) static void
gf100_clk_tidy(struct nvkm_clk *base)
{
 struct gf100_clk *clk = gf100_clk(base);
 memset(clk->eng, 0x00, sizeof(clk->eng));
}
