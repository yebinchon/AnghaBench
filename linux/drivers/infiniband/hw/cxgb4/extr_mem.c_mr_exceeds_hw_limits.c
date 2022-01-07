
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int adapter_type; } ;
struct TYPE_4__ {TYPE_1__ lldi; } ;
struct c4iw_dev {TYPE_2__ rdev; } ;


 scalar_t__ is_t4 (int ) ;
 scalar_t__ is_t5 (int ) ;

__attribute__((used)) static int mr_exceeds_hw_limits(struct c4iw_dev *dev, u64 length)
{
 return (is_t4(dev->rdev.lldi.adapter_type) ||
  is_t5(dev->rdev.lldi.adapter_type)) &&
  length >= 8*1024*1024*1024ULL;
}
