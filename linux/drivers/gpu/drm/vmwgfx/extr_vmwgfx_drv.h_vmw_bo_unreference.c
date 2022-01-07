
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_buffer_object {int base; } ;


 int ttm_bo_put (int *) ;

__attribute__((used)) static inline void vmw_bo_unreference(struct vmw_buffer_object **buf)
{
 struct vmw_buffer_object *tmp_buf = *buf;

 *buf = ((void*)0);
 if (tmp_buf != ((void*)0)) {
  ttm_bo_put(&tmp_buf->base);
 }
}
