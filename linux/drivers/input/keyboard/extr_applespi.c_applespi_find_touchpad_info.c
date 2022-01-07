
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct applespi_tp_info {int dummy; } ;
struct applespi_tp_model_info {scalar_t__ model; struct applespi_tp_info const tp_info; } ;


 struct applespi_tp_model_info* applespi_tp_models ;

__attribute__((used)) static const struct applespi_tp_info *applespi_find_touchpad_info(u8 model)
{
 const struct applespi_tp_model_info *info;

 for (info = applespi_tp_models; info->model; info++) {
  if (info->model == model)
   return &info->tp_info;
 }

 return ((void*)0);
}
