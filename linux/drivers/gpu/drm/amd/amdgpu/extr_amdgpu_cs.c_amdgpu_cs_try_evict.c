
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; scalar_t__ bytes_moved; } ;
struct amdgpu_device {int gmc; } ;
struct amdgpu_cs_parser {int validated; struct amdgpu_bo_list_entry* evictable; int bytes_moved_vis; int bytes_moved; } ;
struct TYPE_6__ {int head; int bo; } ;
struct amdgpu_bo_list_entry {TYPE_2__ tv; } ;
struct TYPE_5__ {int mem_type; } ;
struct TYPE_8__ {TYPE_1__ mem; int bdev; } ;
struct amdgpu_bo {int allowed_domains; int placement; TYPE_4__ tbo; scalar_t__ pin_count; } ;
struct TYPE_7__ {int head; } ;


 scalar_t__ amdgpu_bo_in_cpu_visible_vram (struct amdgpu_bo*) ;
 int amdgpu_bo_placement_from_domain (struct amdgpu_bo*,int) ;
 int amdgpu_gmc_vram_full_visible (int *) ;
 int amdgpu_mem_type_to_domain (int ) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int list_move (int *,int *) ;
 void* list_prev_entry (struct amdgpu_bo_list_entry*,int ) ;
 int ttm_bo_validate (TYPE_4__*,int *,struct ttm_operation_ctx*) ;
 struct amdgpu_bo* ttm_to_amdgpu_bo (int ) ;
 TYPE_3__ tv ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool amdgpu_cs_try_evict(struct amdgpu_cs_parser *p,
    struct amdgpu_bo *validated)
{
 uint32_t domain = validated->allowed_domains;
 struct ttm_operation_ctx ctx = { 1, 0 };
 int r;

 if (!p->evictable)
  return 0;

 for (;&p->evictable->tv.head != &p->validated;
      p->evictable = list_prev_entry(p->evictable, tv.head)) {

  struct amdgpu_bo_list_entry *candidate = p->evictable;
  struct amdgpu_bo *bo = ttm_to_amdgpu_bo(candidate->tv.bo);
  struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
  bool update_bytes_moved_vis;
  uint32_t other;


  if (bo == validated)
   break;


  if (bo->pin_count)
   continue;

  other = amdgpu_mem_type_to_domain(bo->tbo.mem.mem_type);


  if (!(other & domain))
   continue;


  other = bo->allowed_domains & ~domain;
  if (!other)
   continue;


  update_bytes_moved_vis =
    !amdgpu_gmc_vram_full_visible(&adev->gmc) &&
    amdgpu_bo_in_cpu_visible_vram(bo);
  amdgpu_bo_placement_from_domain(bo, other);
  r = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
  p->bytes_moved += ctx.bytes_moved;
  if (update_bytes_moved_vis)
   p->bytes_moved_vis += ctx.bytes_moved;

  if (unlikely(r))
   break;

  p->evictable = list_prev_entry(p->evictable, tv.head);
  list_move(&candidate->tv.head, &p->validated);

  return 1;
 }

 return 0;
}
