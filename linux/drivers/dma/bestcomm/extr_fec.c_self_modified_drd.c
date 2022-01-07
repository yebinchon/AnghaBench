
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ bcom_desc_is_drd (int ) ;
 int * bcom_task_desc (int) ;
 int bcom_task_num_descs (int) ;

__attribute__((used)) static u32 *self_modified_drd(int tasknum)
{
 u32 *desc;
 int num_descs;
 int drd_count;
 int i;

 num_descs = bcom_task_num_descs(tasknum);
 desc = bcom_task_desc(tasknum) + num_descs - 1;
 drd_count = 0;
 for (i=0; i<num_descs; i++, desc--)
  if (bcom_desc_is_drd(*desc) && ++drd_count == 3)
   break;
 return desc;
}
