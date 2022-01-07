
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef int u64 ;
struct msm_gpu_submitqueue {size_t prio; } ;
struct msm_gpu {int * rb; } ;
struct msm_gem_submit {int ticket; int bo_list; int node; scalar_t__ nr_cmds; scalar_t__ nr_bos; int ring; struct msm_gpu_submitqueue* queue; int * bos; void* cmd; int * fence; struct msm_gpu* gpu; struct msm_gem_address_space* aspace; struct drm_device* dev; } ;
struct msm_gem_address_space {int dummy; } ;
struct drm_device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ SIZE_MAX ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int bos ;
 struct msm_gem_submit* kmalloc (scalar_t__,int) ;
 int reservation_ww_class ;
 scalar_t__ struct_size (struct msm_gem_submit*,int ,size_t) ;
 int ww_acquire_init (int *,int *) ;

__attribute__((used)) static struct msm_gem_submit *submit_create(struct drm_device *dev,
  struct msm_gpu *gpu, struct msm_gem_address_space *aspace,
  struct msm_gpu_submitqueue *queue, uint32_t nr_bos,
  uint32_t nr_cmds)
{
 struct msm_gem_submit *submit;
 uint64_t sz = struct_size(submit, bos, nr_bos) +
      ((u64)nr_cmds * sizeof(submit->cmd[0]));

 if (sz > SIZE_MAX)
  return ((void*)0);

 submit = kmalloc(sz, GFP_KERNEL | __GFP_NOWARN | __GFP_NORETRY);
 if (!submit)
  return ((void*)0);

 submit->dev = dev;
 submit->aspace = aspace;
 submit->gpu = gpu;
 submit->fence = ((void*)0);
 submit->cmd = (void *)&submit->bos[nr_bos];
 submit->queue = queue;
 submit->ring = gpu->rb[queue->prio];


 submit->nr_bos = 0;
 submit->nr_cmds = 0;

 INIT_LIST_HEAD(&submit->node);
 INIT_LIST_HEAD(&submit->bo_list);
 ww_acquire_init(&submit->ticket, &reservation_ww_class);

 return submit;
}
