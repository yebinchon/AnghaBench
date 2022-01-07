
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AMDGPU_HW_IP_NUM ;
 scalar_t__* amdgpu_ctx_num_entities ;

__attribute__((used)) static int amdgpu_ctx_total_num_entities(void)
{
 unsigned i, num_entities = 0;

 for (i = 0; i < AMDGPU_HW_IP_NUM; ++i)
  num_entities += amdgpu_ctx_num_entities[i];

 return num_entities;
}
