
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int dummy; } ;


 int pblk_calc_secs (struct pblk*,unsigned int,unsigned int,int) ;
 int pblk_err (struct pblk*,char*,unsigned int,int,unsigned int) ;

__attribute__((used)) static int pblk_calc_secs_to_sync(struct pblk *pblk, unsigned int secs_avail,
      unsigned int secs_to_flush)
{
 int secs_to_sync;

 secs_to_sync = pblk_calc_secs(pblk, secs_avail, secs_to_flush, 1);
 return secs_to_sync;
}
