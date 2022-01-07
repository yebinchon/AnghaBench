
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_ctx_binding_state {int dirty; } ;


 int BUG () ;
 unsigned long VMW_BINDING_NUM_BITS ;




 int __clear_bit (unsigned long,int *) ;
 unsigned long find_next_bit (int *,unsigned long,unsigned long) ;
 int vmw_binding_emit_dirty_ps (struct vmw_ctx_binding_state*) ;
 int vmw_emit_set_rt (struct vmw_ctx_binding_state*) ;
 int vmw_emit_set_so (struct vmw_ctx_binding_state*) ;
 int vmw_emit_set_vb (struct vmw_ctx_binding_state*) ;

__attribute__((used)) static int vmw_binding_emit_dirty(struct vmw_ctx_binding_state *cbs)
{
 int ret = 0;
 unsigned long hit = 0;

 while ((hit = find_next_bit(&cbs->dirty, VMW_BINDING_NUM_BITS, hit))
       < VMW_BINDING_NUM_BITS) {

  switch (hit) {
  case 130:
   ret = vmw_emit_set_rt(cbs);
   break;
  case 131:
   ret = vmw_binding_emit_dirty_ps(cbs);
   break;
  case 129:
   ret = vmw_emit_set_so(cbs);
   break;
  case 128:
   ret = vmw_emit_set_vb(cbs);
   break;
  default:
   BUG();
  }
  if (ret)
   return ret;

  __clear_bit(hit, &cbs->dirty);
  hit++;
 }

 return 0;
}
