
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_target_port {int mr_pool_size; TYPE_1__* srp_host; } ;
struct srp_fr_pool {int dummy; } ;
struct srp_device {int max_pages_per_mr; int pd; int dev; } ;
struct TYPE_2__ {struct srp_device* srp_dev; } ;


 struct srp_fr_pool* srp_create_fr_pool (int ,int ,int ,int ) ;

__attribute__((used)) static struct srp_fr_pool *srp_alloc_fr_pool(struct srp_target_port *target)
{
 struct srp_device *dev = target->srp_host->srp_dev;

 return srp_create_fr_pool(dev->dev, dev->pd, target->mr_pool_size,
      dev->max_pages_per_mr);
}
