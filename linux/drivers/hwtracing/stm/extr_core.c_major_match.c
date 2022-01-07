
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int devt; } ;


 unsigned int MAJOR (int ) ;

__attribute__((used)) static int major_match(struct device *dev, const void *data)
{
 unsigned int major = *(unsigned int *)data;

 return MAJOR(dev->devt) == major;
}
