
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk_line_meta {int min_blk_line; int meta_distance; int blk_per_line; } ;
struct pblk_line {scalar_t__ state; int sec_to_update; int ref; int lock; int meta_distance; int left_seblks; int left_eblks; int id; int blk_bitmap; int erase_bitmap; int blk_in_line; } ;
struct pblk {struct pblk_line_meta lm; } ;


 int EAGAIN ;
 int EINTR ;
 scalar_t__ PBLK_LINESTATE_FREE ;
 scalar_t__ PBLK_LINESTATE_NEW ;
 scalar_t__ PBLK_LINESTATE_OPEN ;
 int WARN (int,char*,int ,scalar_t__) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int bitmap_copy (int ,int ,int ) ;
 int kref_init (int *) ;
 int pblk_disk_name (struct pblk*) ;
 int pblk_prepare_new_line (struct pblk*,struct pblk_line*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_pblk_line_state (int ,int ,scalar_t__) ;

__attribute__((used)) static int pblk_line_prepare(struct pblk *pblk, struct pblk_line *line)
{
 struct pblk_line_meta *lm = &pblk->lm;
 int blk_in_line = atomic_read(&line->blk_in_line);
 int blk_to_erase;


 bitmap_copy(line->erase_bitmap, line->blk_bitmap, lm->blk_per_line);

 spin_lock(&line->lock);




 if (line->state == PBLK_LINESTATE_NEW) {
  blk_to_erase = pblk_prepare_new_line(pblk, line);
  line->state = PBLK_LINESTATE_FREE;
  trace_pblk_line_state(pblk_disk_name(pblk), line->id,
     line->state);
 } else {
  blk_to_erase = blk_in_line;
 }

 if (blk_in_line < lm->min_blk_line) {
  spin_unlock(&line->lock);
  return -EAGAIN;
 }

 if (line->state != PBLK_LINESTATE_FREE) {
  WARN(1, "pblk: corrupted line %d, state %d\n",
       line->id, line->state);
  spin_unlock(&line->lock);
  return -EINTR;
 }

 line->state = PBLK_LINESTATE_OPEN;
 trace_pblk_line_state(pblk_disk_name(pblk), line->id,
    line->state);

 atomic_set(&line->left_eblks, blk_to_erase);
 atomic_set(&line->left_seblks, blk_to_erase);

 line->meta_distance = lm->meta_distance;
 spin_unlock(&line->lock);

 kref_init(&line->ref);
 atomic_set(&line->sec_to_update, 0);

 return 0;
}
