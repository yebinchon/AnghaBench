
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct ttm_validate_buffer {int * bo; int head; } ;
struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 scalar_t__ likely (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int ttm_bo_put (int *) ;
 int ttm_eu_backoff_reservation (struct ww_acquire_ctx*,struct list_head*) ;

__attribute__((used)) static void
vmw_resource_backoff_reservation(struct ww_acquire_ctx *ticket,
     struct ttm_validate_buffer *val_buf)
{
 struct list_head val_list;

 if (likely(val_buf->bo == ((void*)0)))
  return;

 INIT_LIST_HEAD(&val_list);
 list_add_tail(&val_buf->head, &val_list);
 ttm_eu_backoff_reservation(ticket, &val_list);
 ttm_bo_put(val_buf->bo);
 val_buf->bo = ((void*)0);
}
