
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int) ;
 int MBUS_ABOX_BT_CREDIT_POOL1 (int) ;
 int MBUS_ABOX_BT_CREDIT_POOL2 (int) ;
 int MBUS_ABOX_BW_CREDIT (int) ;
 int MBUS_ABOX_B_CREDIT (int) ;
 int MBUS_ABOX_CTL ;

__attribute__((used)) static void icl_mbus_init(struct drm_i915_private *dev_priv)
{
 u32 val;

 val = MBUS_ABOX_BT_CREDIT_POOL1(16) |
       MBUS_ABOX_BT_CREDIT_POOL2(16) |
       MBUS_ABOX_B_CREDIT(1) |
       MBUS_ABOX_BW_CREDIT(1);

 I915_WRITE(MBUS_ABOX_CTL, val);
}
