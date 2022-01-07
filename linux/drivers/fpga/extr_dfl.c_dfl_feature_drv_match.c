
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_feature_id {scalar_t__ id; } ;
struct dfl_feature_driver {struct dfl_feature_id* id_table; } ;
struct dfl_feature {scalar_t__ id; } ;



__attribute__((used)) static bool dfl_feature_drv_match(struct dfl_feature *feature,
      struct dfl_feature_driver *driver)
{
 const struct dfl_feature_id *ids = driver->id_table;

 if (ids) {
  while (ids->id) {
   if (ids->id == feature->id)
    return 1;
   ids++;
  }
 }
 return 0;
}
