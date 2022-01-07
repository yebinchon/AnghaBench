
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xa_limit {int dummy; } ;
struct siw_mem {int stag; } ;
struct siw_device {int mem_xa; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct xa_limit XA_LIMIT (int,int) ;
 int get_random_bytes (int*,int) ;
 int siw_dbg_mem (struct siw_mem*,char*) ;
 scalar_t__ xa_alloc_cyclic (int *,int*,struct siw_mem*,struct xa_limit,int*,int ) ;

int siw_mem_add(struct siw_device *sdev, struct siw_mem *m)
{
 struct xa_limit limit = XA_LIMIT(1, 0x00ffffff);
 u32 id, next;

 get_random_bytes(&next, 4);
 next &= 0x00ffffff;

 if (xa_alloc_cyclic(&sdev->mem_xa, &id, m, limit, &next,
     GFP_KERNEL) < 0)
  return -ENOMEM;


 m->stag = id << 8;

 siw_dbg_mem(m, "new MEM object\n");

 return 0;
}
