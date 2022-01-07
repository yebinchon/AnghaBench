
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40iw_device {int mr_stagmask; int allocated_mrs; } ;


 int I40IW_CQPSQ_STAG_IDX_SHIFT ;
 int i40iw_free_resource (struct i40iw_device*,int ,int) ;
 int i40iw_rem_devusecount (struct i40iw_device*) ;

__attribute__((used)) static void i40iw_free_stag(struct i40iw_device *iwdev, u32 stag)
{
 u32 stag_idx;

 stag_idx = (stag & iwdev->mr_stagmask) >> I40IW_CQPSQ_STAG_IDX_SHIFT;
 i40iw_free_resource(iwdev, iwdev->allocated_mrs, stag_idx);
 i40iw_rem_devusecount(iwdev);
}
