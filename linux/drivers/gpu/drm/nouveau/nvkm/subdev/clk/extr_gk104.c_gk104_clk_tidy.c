
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int dummy; } ;
struct gk104_clk {int eng; } ;


 struct gk104_clk* gk104_clk (struct nvkm_clk*) ;
 int memset (int ,int,int) ;

__attribute__((used)) static void
gk104_clk_tidy(struct nvkm_clk *base)
{
 struct gk104_clk *clk = gk104_clk(base);
 memset(clk->eng, 0x00, sizeof(clk->eng));
}
