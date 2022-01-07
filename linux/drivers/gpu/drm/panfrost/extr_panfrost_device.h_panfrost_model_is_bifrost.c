
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;


 scalar_t__ panfrost_model_cmp (struct panfrost_device*,int) ;

__attribute__((used)) static inline bool panfrost_model_is_bifrost(struct panfrost_device *pfdev)
{
 return panfrost_model_cmp(pfdev, 0x1000) >= 0;
}
