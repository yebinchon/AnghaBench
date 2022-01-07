
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_line_mgmt {TYPE_1__** eline_meta; int * sline_meta; int meta_bitmap; int free_lock; } ;
struct pblk_line_meta {int * emeta_len; int smeta_len; } ;
struct pblk_line {int meta_line; TYPE_1__* emeta; int smeta; } ;
struct TYPE_2__ {int sync; scalar_t__ mem; int buf; } ;


 int PBLK_DATA_LINES ;
 int atomic_set (int *,int ) ;
 int find_first_zero_bit (int *,int) ;
 int io_schedule () ;
 int lockdep_assert_held (int *) ;
 int memset (int ,int ,int ) ;
 int set_bit (int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pblk_line_setup_metadata(struct pblk_line *line,
         struct pblk_line_mgmt *l_mg,
         struct pblk_line_meta *lm)
{
 int meta_line;

 lockdep_assert_held(&l_mg->free_lock);

retry_meta:
 meta_line = find_first_zero_bit(&l_mg->meta_bitmap, PBLK_DATA_LINES);
 if (meta_line == PBLK_DATA_LINES) {
  spin_unlock(&l_mg->free_lock);
  io_schedule();
  spin_lock(&l_mg->free_lock);
  goto retry_meta;
 }

 set_bit(meta_line, &l_mg->meta_bitmap);
 line->meta_line = meta_line;

 line->smeta = l_mg->sline_meta[meta_line];
 line->emeta = l_mg->eline_meta[meta_line];

 memset(line->smeta, 0, lm->smeta_len);
 memset(line->emeta->buf, 0, lm->emeta_len[0]);

 line->emeta->mem = 0;
 atomic_set(&line->emeta->sync, 0);
}
