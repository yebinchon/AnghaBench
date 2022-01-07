
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu_workload {int ring_id; unsigned long rb_len; unsigned long rb_tail; unsigned long rb_head; unsigned long rb_start; void* shadow_ring_buffer_va; int rb_ctl; struct intel_vgpu* vgpu; } ;
struct intel_vgpu_submission {unsigned long* ring_scan_buffer_size; void** ring_scan_buffer; } ;
struct TYPE_2__ {int ggtt_mm; } ;
struct intel_vgpu {TYPE_1__ gtt; struct intel_vgpu_submission submission; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long _RING_CTL_BUF_SIZE (int ) ;
 int copy_gma_to_hva (struct intel_vgpu*,int ,unsigned long,unsigned long,void*) ;
 int gvt_vgpu_err (char*) ;
 void* krealloc (void*,unsigned long,int ) ;

__attribute__((used)) static int shadow_workload_ring_buffer(struct intel_vgpu_workload *workload)
{
 struct intel_vgpu *vgpu = workload->vgpu;
 struct intel_vgpu_submission *s = &vgpu->submission;
 unsigned long gma_head, gma_tail, gma_top, guest_rb_size;
 void *shadow_ring_buffer_va;
 int ring_id = workload->ring_id;
 int ret;

 guest_rb_size = _RING_CTL_BUF_SIZE(workload->rb_ctl);


 workload->rb_len = (workload->rb_tail + guest_rb_size -
   workload->rb_head) % guest_rb_size;

 gma_head = workload->rb_start + workload->rb_head;
 gma_tail = workload->rb_start + workload->rb_tail;
 gma_top = workload->rb_start + guest_rb_size;

 if (workload->rb_len > s->ring_scan_buffer_size[ring_id]) {
  void *p;


  p = krealloc(s->ring_scan_buffer[ring_id], workload->rb_len,
    GFP_KERNEL);
  if (!p) {
   gvt_vgpu_err("fail to re-alloc ring scan buffer\n");
   return -ENOMEM;
  }
  s->ring_scan_buffer[ring_id] = p;
  s->ring_scan_buffer_size[ring_id] = workload->rb_len;
 }

 shadow_ring_buffer_va = s->ring_scan_buffer[ring_id];


 workload->shadow_ring_buffer_va = shadow_ring_buffer_va;


 if (gma_head > gma_tail) {
  ret = copy_gma_to_hva(vgpu, vgpu->gtt.ggtt_mm,
          gma_head, gma_top, shadow_ring_buffer_va);
  if (ret < 0) {
   gvt_vgpu_err("fail to copy guest ring buffer\n");
   return ret;
  }
  shadow_ring_buffer_va += ret;
  gma_head = workload->rb_start;
 }


 ret = copy_gma_to_hva(vgpu, vgpu->gtt.ggtt_mm, gma_head, gma_tail,
    shadow_ring_buffer_va);
 if (ret < 0) {
  gvt_vgpu_err("fail to copy guest ring buffer\n");
  return ret;
 }
 return 0;
}
