
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct coresight_platform_data {int dummy; } ;


 int ENOENT ;

__attribute__((used)) static inline int
of_get_coresight_platform_data(struct device *dev,
          struct coresight_platform_data *pdata)
{
 return -ENOENT;
}
