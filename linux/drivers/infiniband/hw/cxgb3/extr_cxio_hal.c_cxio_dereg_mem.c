
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxio_rdev {int dummy; } ;


 int __cxio_tpt_op (struct cxio_rdev*,int,int *,int ,int ,int ,int ,int ,unsigned long long,int ,int ,int ,int ) ;

int cxio_dereg_mem(struct cxio_rdev *rdev_p, u32 stag, u32 pbl_size,
     u32 pbl_addr)
{
 return __cxio_tpt_op(rdev_p, 1, &stag, 0, 0, 0, 0, 0, 0ULL, 0, 0,
        pbl_size, pbl_addr);
}
