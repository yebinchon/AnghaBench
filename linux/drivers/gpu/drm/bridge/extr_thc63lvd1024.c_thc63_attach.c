
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thc63_dev {int next; } ;
struct drm_bridge {int encoder; } ;


 int drm_bridge_attach (int ,int ,struct drm_bridge*) ;
 struct thc63_dev* to_thc63 (struct drm_bridge*) ;

__attribute__((used)) static int thc63_attach(struct drm_bridge *bridge)
{
 struct thc63_dev *thc63 = to_thc63(bridge);

 return drm_bridge_attach(bridge->encoder, thc63->next, bridge);
}
