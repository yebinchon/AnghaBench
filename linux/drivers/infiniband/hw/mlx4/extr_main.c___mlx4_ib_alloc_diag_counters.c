
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct TYPE_3__ {int flags2; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT ;
 int diag_basic ;
 int diag_device_only ;
 int diag_ext ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (char const**) ;

__attribute__((used)) static int __mlx4_ib_alloc_diag_counters(struct mlx4_ib_dev *ibdev,
      const char ***name,
      u32 **offset,
      u32 *num,
      bool port)
{
 u32 num_counters;

 num_counters = ARRAY_SIZE(diag_basic);

 if (ibdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_DIAG_PER_PORT)
  num_counters += ARRAY_SIZE(diag_ext);

 if (!port)
  num_counters += ARRAY_SIZE(diag_device_only);

 *name = kcalloc(num_counters, sizeof(**name), GFP_KERNEL);
 if (!*name)
  return -ENOMEM;

 *offset = kcalloc(num_counters, sizeof(**offset), GFP_KERNEL);
 if (!*offset)
  goto err_name;

 *num = num_counters;

 return 0;

err_name:
 kfree(*name);
 return -ENOMEM;
}
