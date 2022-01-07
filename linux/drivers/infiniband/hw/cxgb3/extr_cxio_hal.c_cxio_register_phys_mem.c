
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct cxio_rdev {int dummy; } ;
typedef enum tpt_mem_perm { ____Placeholder_tpt_mem_perm } tpt_mem_perm ;


 int T3_STAG_UNSET ;
 int TPT_NON_SHARED_MR ;
 int __cxio_tpt_op (struct cxio_rdev*,int ,int *,int,int ,int ,int,int ,int ,int ,int ,int ,int ) ;

int cxio_register_phys_mem(struct cxio_rdev *rdev_p, u32 *stag, u32 pdid,
      enum tpt_mem_perm perm, u32 zbva, u64 to, u32 len,
      u8 page_size, u32 pbl_size, u32 pbl_addr)
{
 *stag = T3_STAG_UNSET;
 return __cxio_tpt_op(rdev_p, 0, stag, 1, pdid, TPT_NON_SHARED_MR, perm,
        zbva, to, len, page_size, pbl_size, pbl_addr);
}
