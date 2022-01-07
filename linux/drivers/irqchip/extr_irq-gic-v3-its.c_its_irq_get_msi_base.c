
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct its_node {scalar_t__ phys_base; } ;
struct its_device {struct its_node* its; } ;


 scalar_t__ GITS_TRANSLATER ;

__attribute__((used)) static u64 its_irq_get_msi_base(struct its_device *its_dev)
{
 struct its_node *its = its_dev->its;

 return its->phys_base + GITS_TRANSLATER;
}
