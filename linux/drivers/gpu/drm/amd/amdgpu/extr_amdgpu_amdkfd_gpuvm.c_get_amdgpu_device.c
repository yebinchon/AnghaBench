
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;



__attribute__((used)) static inline struct amdgpu_device *get_amdgpu_device(struct kgd_dev *kgd)
{
 return (struct amdgpu_device *)kgd;
}
