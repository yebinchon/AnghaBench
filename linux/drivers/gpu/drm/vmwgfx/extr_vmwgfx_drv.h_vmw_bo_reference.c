
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_buffer_object {int base; } ;


 int ttm_bo_get (int *) ;

__attribute__((used)) static inline struct vmw_buffer_object *
vmw_bo_reference(struct vmw_buffer_object *buf)
{
 ttm_bo_get(&buf->base);
 return buf;
}
