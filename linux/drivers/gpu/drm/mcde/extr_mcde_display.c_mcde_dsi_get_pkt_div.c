
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int ,int) ;
 int MCDE_MAX_WIDTH ;

__attribute__((used)) static int mcde_dsi_get_pkt_div(int ppl, int fifo_size)
{




 int div;
 const int max_div = DIV_ROUND_UP(MCDE_MAX_WIDTH, fifo_size);

 for (div = 1; div < max_div; div++)
  if (ppl % div == 0 && ppl / div <= fifo_size)
   return div;
 return 1;
}
