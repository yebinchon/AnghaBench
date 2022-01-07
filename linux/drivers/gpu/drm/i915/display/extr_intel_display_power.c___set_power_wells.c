
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct i915_power_well_desc {int id; } ;
struct i915_power_domains {int power_well_count; TYPE_1__* power_wells; } ;
typedef int power_well_ids ;
typedef enum i915_power_well_id { ____Placeholder_i915_power_well_id } i915_power_well_id ;
struct TYPE_2__ {struct i915_power_well_desc const* desc; } ;


 int BIT_ULL (int) ;
 int DISP_PW_ID_NONE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 TYPE_1__* kcalloc (int,int,int ) ;

__attribute__((used)) static int
__set_power_wells(struct i915_power_domains *power_domains,
    const struct i915_power_well_desc *power_well_descs,
    int power_well_count)
{
 u64 power_well_ids = 0;
 int i;

 power_domains->power_well_count = power_well_count;
 power_domains->power_wells =
    kcalloc(power_well_count,
     sizeof(*power_domains->power_wells),
     GFP_KERNEL);
 if (!power_domains->power_wells)
  return -ENOMEM;

 for (i = 0; i < power_well_count; i++) {
  enum i915_power_well_id id = power_well_descs[i].id;

  power_domains->power_wells[i].desc = &power_well_descs[i];

  if (id == DISP_PW_ID_NONE)
   continue;

  WARN_ON(id >= sizeof(power_well_ids) * 8);
  WARN_ON(power_well_ids & BIT_ULL(id));
  power_well_ids |= BIT_ULL(id);
 }

 return 0;
}
