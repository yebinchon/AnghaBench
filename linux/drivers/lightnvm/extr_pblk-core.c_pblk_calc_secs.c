
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int sec_per_write; int min_write_pgs; int min_write_pgs_data; } ;



int pblk_calc_secs(struct pblk *pblk, unsigned long secs_avail,
     unsigned long secs_to_flush, bool skip_meta)
{
 int max = pblk->sec_per_write;
 int min = pblk->min_write_pgs;
 int secs_to_sync = 0;

 if (skip_meta && pblk->min_write_pgs_data != pblk->min_write_pgs)
  min = max = pblk->min_write_pgs_data;

 if (secs_avail >= max)
  secs_to_sync = max;
 else if (secs_avail >= min)
  secs_to_sync = min * (secs_avail / min);
 else if (secs_to_flush)
  secs_to_sync = min;

 return secs_to_sync;
}
