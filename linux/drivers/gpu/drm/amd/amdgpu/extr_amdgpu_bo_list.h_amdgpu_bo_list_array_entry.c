
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_bo_list {int dummy; } ;



__attribute__((used)) static inline struct amdgpu_bo_list_entry *
amdgpu_bo_list_array_entry(struct amdgpu_bo_list *list, unsigned index)
{
 struct amdgpu_bo_list_entry *array = (void *)&list[1];

 return &array[index];
}
