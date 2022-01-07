
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct i40iw_device {int mr_stagmask; int max_mr; int allocated_mrs; } ;
typedef int random ;


 int I40IW_CQPSQ_STAG_IDX_SHIFT ;
 int get_random_bytes (int*,int) ;
 int i40iw_add_devusecount (struct i40iw_device*) ;
 int i40iw_alloc_resource (struct i40iw_device*,int ,int,int*,int*) ;

__attribute__((used)) static u32 i40iw_create_stag(struct i40iw_device *iwdev)
{
 u32 stag = 0;
 u32 stag_index = 0;
 u32 next_stag_index;
 u32 driver_key;
 u32 random;
 u8 consumer_key;
 int ret;

 get_random_bytes(&random, sizeof(random));
 consumer_key = (u8)random;

 driver_key = random & ~iwdev->mr_stagmask;
 next_stag_index = (random & iwdev->mr_stagmask) >> 8;
 next_stag_index %= iwdev->max_mr;

 ret = i40iw_alloc_resource(iwdev,
       iwdev->allocated_mrs, iwdev->max_mr,
       &stag_index, &next_stag_index);
 if (!ret) {
  stag = stag_index << I40IW_CQPSQ_STAG_IDX_SHIFT;
  stag |= driver_key;
  stag += (u32)consumer_key;
  i40iw_add_devusecount(iwdev);
 }
 return stag;
}
