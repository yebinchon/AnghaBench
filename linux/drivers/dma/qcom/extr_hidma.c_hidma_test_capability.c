
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum hidma_cap { ____Placeholder_hidma_cap } hidma_cap ;


 scalar_t__ device_get_match_data (struct device*) ;

__attribute__((used)) static bool hidma_test_capability(struct device *dev, enum hidma_cap test_cap)
{
 enum hidma_cap cap;

 cap = (enum hidma_cap) device_get_match_data(dev);
 return cap ? ((cap & test_cap) > 0) : 0;
}
