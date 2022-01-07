
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;
typedef int s32 ;


 int panfrost_model_cmp (struct panfrost_device*,int ) ;

__attribute__((used)) static inline bool panfrost_model_eq(struct panfrost_device *pfdev, s32 id)
{
 return !panfrost_model_cmp(pfdev, id);
}
