
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_rl {int werr_lines; } ;
struct pblk_gc {scalar_t__ gc_active; } ;


 unsigned int atomic_read (int *) ;
 unsigned int pblk_rl_high_thrs (struct pblk_rl*) ;
 unsigned int pblk_rl_nr_free_blks (struct pblk_rl*) ;

__attribute__((used)) static bool pblk_gc_should_run(struct pblk_gc *gc, struct pblk_rl *rl)
{
 unsigned int nr_blocks_free, nr_blocks_need;
 unsigned int werr_lines = atomic_read(&rl->werr_lines);

 nr_blocks_need = pblk_rl_high_thrs(rl);
 nr_blocks_free = pblk_rl_nr_free_blks(rl);


 return ((werr_lines > 0) ||
  ((gc->gc_active) && (nr_blocks_need > nr_blocks_free)));
}
