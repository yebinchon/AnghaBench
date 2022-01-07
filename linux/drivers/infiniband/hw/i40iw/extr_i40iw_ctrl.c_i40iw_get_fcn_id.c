
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct i40iw_sc_dev {int* fcn_id_array; } ;


 size_t I40IW_FIRST_NON_PF_STAT ;
 size_t I40IW_INVALID_FCN_ID ;
 size_t I40IW_MAX_STATS_COUNT ;

__attribute__((used)) static u8 i40iw_get_fcn_id(struct i40iw_sc_dev *dev)
{
 u8 fcn_id = I40IW_INVALID_FCN_ID;
 u8 i;

 for (i = I40IW_FIRST_NON_PF_STAT; i < I40IW_MAX_STATS_COUNT; i++)
  if (!dev->fcn_id_array[i]) {
   fcn_id = i;
   dev->fcn_id_array[i] = 1;
   break;
  }
 return fcn_id;
}
