
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_lru_bulk_move_pos {struct ttm_buffer_object* last; struct ttm_buffer_object* first; } ;
struct ttm_buffer_object {int dummy; } ;



__attribute__((used)) static void ttm_bo_bulk_move_set_pos(struct ttm_lru_bulk_move_pos *pos,
         struct ttm_buffer_object *bo)
{
 if (!pos->first)
  pos->first = bo;
 pos->last = bo;
}
