
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int max; int min; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;


 int clamp (int ,int ,int ) ;
 int scale (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline u32 clamp_user_to_hw(struct intel_connector *connector,
       u32 user_level, u32 user_max)
{
 struct intel_panel *panel = &connector->panel;
 u32 hw_level;

 hw_level = scale(user_level, 0, user_max, 0, panel->backlight.max);
 hw_level = clamp(hw_level, panel->backlight.min, panel->backlight.max);

 return hw_level;
}
