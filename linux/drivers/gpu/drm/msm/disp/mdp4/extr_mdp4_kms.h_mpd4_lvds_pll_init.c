
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 struct clk* ERR_PTR (int ) ;

__attribute__((used)) static inline struct clk *mpd4_lvds_pll_init(struct drm_device *dev)
{
 return ERR_PTR(-ENODEV);
}
