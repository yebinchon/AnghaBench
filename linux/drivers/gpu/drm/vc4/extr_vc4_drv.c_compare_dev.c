
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void device ;



__attribute__((used)) static int compare_dev(struct device *dev, void *data)
{
 return dev == data;
}
