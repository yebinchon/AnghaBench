
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_buffer_object {scalar_t__* res_prios; } ;


 int vmw_bo_prio_adjust (struct vmw_buffer_object*) ;

__attribute__((used)) static inline void vmw_bo_prio_del(struct vmw_buffer_object *vbo, int prio)
{
 if (--vbo->res_prios[prio] == 0)
  vmw_bo_prio_adjust(vbo);
}
