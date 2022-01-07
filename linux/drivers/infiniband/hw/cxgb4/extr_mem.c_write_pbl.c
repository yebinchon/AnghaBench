
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct c4iw_wr_wait {int dummy; } ;
struct TYPE_6__ {TYPE_2__* vr; } ;
struct c4iw_rdev {TYPE_3__ lldi; } ;
typedef int __be64 ;
struct TYPE_4__ {int start; } ;
struct TYPE_5__ {TYPE_1__ pbl; } ;


 int pr_debug (char*,int,int ,int) ;
 int write_adapter_mem (struct c4iw_rdev*,int,int,int *,int *,struct c4iw_wr_wait*) ;

__attribute__((used)) static int write_pbl(struct c4iw_rdev *rdev, __be64 *pbl,
       u32 pbl_addr, u32 pbl_size, struct c4iw_wr_wait *wr_waitp)
{
 int err;

 pr_debug("*pdb_addr 0x%x, pbl_base 0x%x, pbl_size %d\n",
   pbl_addr, rdev->lldi.vr->pbl.start,
   pbl_size);

 err = write_adapter_mem(rdev, pbl_addr >> 5, pbl_size << 3, pbl, ((void*)0),
    wr_waitp);
 return err;
}
