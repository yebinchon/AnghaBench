
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_feature_platform_data {int dummy; } ;
struct dfl_feature {int dummy; } ;



__attribute__((used)) static inline int dfl_feature_platform_data_size(const int num)
{
 return sizeof(struct dfl_feature_platform_data) +
  num * sizeof(struct dfl_feature);
}
