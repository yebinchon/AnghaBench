
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_exec_state {int ring_id; void* ring_start; unsigned long ring_head; unsigned long ring_tail; int is_ctx_wa; struct intel_vgpu_workload* workload; int rb_va; void* ring_size; int vgpu; int buf_addr_type; int buf_type; } ;
struct intel_vgpu_workload {unsigned long rb_start; unsigned long rb_head; unsigned long rb_tail; int ring_id; int rb_ctl; int shadow_ring_buffer_va; int vgpu; } ;


 int EINVAL ;
 int GTT_BUFFER ;
 int I915_GTT_PAGE_SIZE ;
 int IS_ALIGNED (unsigned long,int ) ;
 int RING_BUFFER_INSTRUCTION ;
 scalar_t__ WARN_ON (int) ;
 void* _RING_CTL_BUF_SIZE (int ) ;
 int bypass_scan_mask ;
 int command_scan (struct parser_exec_state*,unsigned long,unsigned long,void*,void*) ;
 int ip_gma_set (struct parser_exec_state*,unsigned long) ;

__attribute__((used)) static int scan_workload(struct intel_vgpu_workload *workload)
{
 unsigned long gma_head, gma_tail, gma_bottom;
 struct parser_exec_state s;
 int ret = 0;


 if (WARN_ON(!IS_ALIGNED(workload->rb_start, I915_GTT_PAGE_SIZE)))
  return -EINVAL;

 gma_head = workload->rb_start + workload->rb_head;
 gma_tail = workload->rb_start + workload->rb_tail;
 gma_bottom = workload->rb_start + _RING_CTL_BUF_SIZE(workload->rb_ctl);

 s.buf_type = RING_BUFFER_INSTRUCTION;
 s.buf_addr_type = GTT_BUFFER;
 s.vgpu = workload->vgpu;
 s.ring_id = workload->ring_id;
 s.ring_start = workload->rb_start;
 s.ring_size = _RING_CTL_BUF_SIZE(workload->rb_ctl);
 s.ring_head = gma_head;
 s.ring_tail = gma_tail;
 s.rb_va = workload->shadow_ring_buffer_va;
 s.workload = workload;
 s.is_ctx_wa = 0;

 if ((bypass_scan_mask & (1 << workload->ring_id)) ||
  gma_head == gma_tail)
  return 0;

 ret = ip_gma_set(&s, gma_head);
 if (ret)
  goto out;

 ret = command_scan(&s, workload->rb_head, workload->rb_tail,
  workload->rb_start, _RING_CTL_BUF_SIZE(workload->rb_ctl));

out:
 return ret;
}
