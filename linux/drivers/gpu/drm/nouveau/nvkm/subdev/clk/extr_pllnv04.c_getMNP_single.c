
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_subdev {TYPE_1__* device; } ;
struct TYPE_6__ {int major; int chip; } ;
struct nvkm_bios {TYPE_3__ version; } ;
struct TYPE_5__ {int min_freq; int max_freq; int min_m; int max_m; int min_n; int max_n; int min_inputfreq; int max_inputfreq; } ;
struct nvbios_pll {int min_p; int max_p_usable; int refclk; TYPE_2__ vco1; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;


 int INT_MAX ;
 int abs (int) ;

__attribute__((used)) static int
getMNP_single(struct nvkm_subdev *subdev, struct nvbios_pll *info, int clk,
       int *pN, int *pM, int *pP)
{
 struct nvkm_bios *bios = subdev->device->bios;
 int minvco = info->vco1.min_freq, maxvco = info->vco1.max_freq;
 int minM = info->vco1.min_m, maxM = info->vco1.max_m;
 int minN = info->vco1.min_n, maxN = info->vco1.max_n;
 int minU = info->vco1.min_inputfreq;
 int maxU = info->vco1.max_inputfreq;
 int minP = info->min_p;
 int maxP = info->max_p_usable;
 int crystal = info->refclk;
 int M, N, thisP, P;
 int clkP, calcclk;
 int delta, bestdelta = INT_MAX;
 int bestclk = 0;



 if (bios->version.major < 0x60) {
  int cv = bios->version.chip;
  if (cv < 0x17 || cv == 0x1a || cv == 0x20) {
   if (clk > 250000)
    maxM = 6;
   if (clk > 340000)
    maxM = 2;
  } else if (cv < 0x40) {
   if (clk > 150000)
    maxM = 6;
   if (clk > 200000)
    maxM = 4;
   if (clk > 340000)
    maxM = 2;
  }
 }

 P = 1 << maxP;
 if ((clk * P) < minvco) {
  minvco = clk * maxP;
  maxvco = minvco * 2;
 }

 if (clk + clk/200 > maxvco)
  maxvco = clk + clk/200;


 for (thisP = minP; thisP <= maxP; thisP++) {
  P = 1 << thisP;
  clkP = clk * P;

  if (clkP < minvco)
   continue;
  if (clkP > maxvco)
   return bestclk;

  for (M = minM; M <= maxM; M++) {
   if (crystal/M < minU)
    return bestclk;
   if (crystal/M > maxU)
    continue;


   N = (clkP * M + crystal/2) / crystal;

   if (N < minN)
    continue;
   if (N > maxN)
    break;


   calcclk = ((N * crystal + P/2) / P + M/2) / M;
   delta = abs(calcclk - clk);



   if (delta < bestdelta) {
    bestdelta = delta;
    bestclk = calcclk;
    *pN = N;
    *pM = M;
    *pP = thisP;
    if (delta == 0)
     return bestclk;
   }
  }
 }

 return bestclk;
}
