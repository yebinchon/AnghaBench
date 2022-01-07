
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_features; } ;
struct panfrost_device {TYPE_1__ features; } ;
typedef enum panfrost_hw_feature { ____Placeholder_panfrost_hw_feature } panfrost_hw_feature ;


 int test_bit (int,int ) ;

__attribute__((used)) static inline bool panfrost_has_hw_feature(struct panfrost_device *pfdev,
        enum panfrost_hw_feature feat)
{
 return test_bit(feat, pfdev->features.hw_features);
}
