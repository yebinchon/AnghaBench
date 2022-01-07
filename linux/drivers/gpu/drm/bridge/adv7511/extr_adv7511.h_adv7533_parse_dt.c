
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct adv7511 {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int adv7533_parse_dt(struct device_node *np, struct adv7511 *adv)
{
 return -ENODEV;
}
