
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static int
_get_mdevice_count(struct device *dev, void *cnt)
{
 *(int *)cnt += 1;
 return 0;
}
