
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_gicp_spi_range {int count; int start; } ;
struct mvebu_gicp {int spi_ranges_cnt; struct mvebu_gicp_spi_range* spi_ranges; } ;


 int EINVAL ;

__attribute__((used)) static int gicp_idx_to_spi(struct mvebu_gicp *gicp, int idx)
{
 int i;

 for (i = 0; i < gicp->spi_ranges_cnt; i++) {
  struct mvebu_gicp_spi_range *r = &gicp->spi_ranges[i];

  if (idx < r->count)
   return r->start + idx;

  idx -= r->count;
 }

 return -EINVAL;
}
