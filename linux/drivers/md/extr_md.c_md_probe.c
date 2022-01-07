
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int dev_t ;


 scalar_t__ create_on_open ;
 int md_alloc (int ,int *) ;

__attribute__((used)) static struct kobject *md_probe(dev_t dev, int *part, void *data)
{
 if (create_on_open)
  md_alloc(dev, ((void*)0));
 return ((void*)0);
}
