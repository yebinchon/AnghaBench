
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct devx_obj {int dummy; } ;
typedef int __be64 ;


 int MAX_SUPP_EVENT_NUM ;
 int * MLX5_CAP_DEV_EVENT (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 unsigned long long be64_to_cpu (int ) ;
 int event_cap ;
 int is_valid_events_legacy (int,int*,struct devx_obj*) ;
 int user_affiliated_events ;
 int user_unaffiliated_events ;

__attribute__((used)) static bool is_valid_events(struct mlx5_core_dev *dev,
       int num_events, u16 *event_type_num_list,
       struct devx_obj *obj)
{
 __be64 *aff_events;
 __be64 *unaff_events;
 int mask_entry;
 int mask_bit;
 int i;

 if (MLX5_CAP_GEN(dev, event_cap)) {
  aff_events = MLX5_CAP_DEV_EVENT(dev,
      user_affiliated_events);
  unaff_events = MLX5_CAP_DEV_EVENT(dev,
        user_unaffiliated_events);
 } else {
  return is_valid_events_legacy(num_events, event_type_num_list,
           obj);
 }

 for (i = 0; i < num_events; i++) {
  if (event_type_num_list[i] > MAX_SUPP_EVENT_NUM)
   return 0;

  mask_entry = event_type_num_list[i] / 64;
  mask_bit = event_type_num_list[i] % 64;

  if (obj) {

   if (event_type_num_list[i] == 0)
    continue;

   if (!(be64_to_cpu(aff_events[mask_entry]) &
     (1ull << mask_bit)))
    return 0;

   continue;
  }

  if (!(be64_to_cpu(unaff_events[mask_entry]) &
    (1ull << mask_bit)))
   return 0;
 }

 return 1;
}
