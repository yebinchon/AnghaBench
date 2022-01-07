
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cxio_rdev {int dummy; } ;


 int T3_STAG_UNSET ;
 int TPT_NON_SHARED_MR ;
 int __cxio_tpt_op (struct cxio_rdev*,int ,int *,int ,int ,int ,int ,int ,unsigned long long,int ,int ,int ,int ) ;

int cxio_allocate_stag(struct cxio_rdev *rdev_p, u32 *stag, u32 pdid, u32 pbl_size, u32 pbl_addr)
{
 *stag = T3_STAG_UNSET;
 return __cxio_tpt_op(rdev_p, 0, stag, 0, pdid, TPT_NON_SHARED_MR,
        0, 0, 0ULL, 0, 0, pbl_size, pbl_addr);
}
