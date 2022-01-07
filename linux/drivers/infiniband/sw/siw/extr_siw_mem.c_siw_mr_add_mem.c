
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct xa_limit {int dummy; } ;
struct TYPE_2__ {int lkey; int rkey; } ;
struct siw_mr {TYPE_1__ base_mr; struct siw_mem* mem; } ;
struct siw_mem {int perms; int stag; int ref; struct ib_pd* pd; void* len; void* va; struct siw_device* sdev; scalar_t__ stag_valid; void* mem_obj; } ;
struct siw_device {int mem_xa; } ;
struct ib_pd {int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IWARP_ACCESS_MASK ;
 struct xa_limit XA_LIMIT (int,int) ;
 int get_random_bytes (int*,int) ;
 int kfree (struct siw_mem*) ;
 int kref_init (int *) ;
 struct siw_mem* kzalloc (int,int ) ;
 struct siw_device* to_siw_dev (int ) ;
 scalar_t__ xa_alloc_cyclic (int *,int*,struct siw_mem*,struct xa_limit,int*,int ) ;

int siw_mr_add_mem(struct siw_mr *mr, struct ib_pd *pd, void *mem_obj,
     u64 start, u64 len, int rights)
{
 struct siw_device *sdev = to_siw_dev(pd->device);
 struct siw_mem *mem = kzalloc(sizeof(*mem), GFP_KERNEL);
 struct xa_limit limit = XA_LIMIT(1, 0x00ffffff);
 u32 id, next;

 if (!mem)
  return -ENOMEM;

 mem->mem_obj = mem_obj;
 mem->stag_valid = 0;
 mem->sdev = sdev;
 mem->va = start;
 mem->len = len;
 mem->pd = pd;
 mem->perms = rights & IWARP_ACCESS_MASK;
 kref_init(&mem->ref);

 mr->mem = mem;

 get_random_bytes(&next, 4);
 next &= 0x00ffffff;

 if (xa_alloc_cyclic(&sdev->mem_xa, &id, mem, limit, &next,
     GFP_KERNEL) < 0) {
  kfree(mem);
  return -ENOMEM;
 }

 mem->stag = id << 8;
 mr->base_mr.lkey = mr->base_mr.rkey = mem->stag;

 return 0;
}
