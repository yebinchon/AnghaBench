
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pblk_line {scalar_t__ left_msecs; int lock; } ;
struct pblk {int dummy; } ;


 int WARN (int,char*) ;
 int __pblk_alloc_page (struct pblk*,struct pblk_line*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u64 pblk_alloc_page(struct pblk *pblk, struct pblk_line *line, int nr_secs)
{
 u64 addr;




 spin_lock(&line->lock);
 addr = __pblk_alloc_page(pblk, line, nr_secs);
 line->left_msecs -= nr_secs;
 WARN(line->left_msecs < 0, "pblk: page allocation out of bounds\n");
 spin_unlock(&line->lock);

 return addr;
}
