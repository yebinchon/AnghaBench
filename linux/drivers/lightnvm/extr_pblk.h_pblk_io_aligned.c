
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int min_write_pgs; } ;



__attribute__((used)) static inline int pblk_io_aligned(struct pblk *pblk, int nr_secs)
{
 return !(nr_secs % pblk->min_write_pgs);
}
