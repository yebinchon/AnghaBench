
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg4573 {int dummy; } ;
struct drm_panel {int dummy; } ;


 int lg4573_init (struct lg4573*) ;
 int lg4573_power_on (struct lg4573*) ;
 struct lg4573* panel_to_lg4573 (struct drm_panel*) ;

__attribute__((used)) static int lg4573_enable(struct drm_panel *panel)
{
 struct lg4573 *ctx = panel_to_lg4573(panel);

 lg4573_init(ctx);

 return lg4573_power_on(ctx);
}
