
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct cnl_ddi_buf_trans {int dummy; } ;


 int ARRAY_SIZE (struct cnl_ddi_buf_trans const*) ;
 int CNL_PORT_COMP_DW3 ;
 scalar_t__ I915_READ (int ) ;
 int MISSING_CASE (scalar_t__) ;
 scalar_t__ VOLTAGE_INFO_0_85V ;
 scalar_t__ VOLTAGE_INFO_0_95V ;
 scalar_t__ VOLTAGE_INFO_1_05V ;
 scalar_t__ VOLTAGE_INFO_MASK ;
 struct cnl_ddi_buf_trans const* cnl_ddi_translations_dp_0_85V ;
 struct cnl_ddi_buf_trans const* cnl_ddi_translations_dp_0_95V ;
 struct cnl_ddi_buf_trans const* cnl_ddi_translations_dp_1_05V ;

__attribute__((used)) static const struct cnl_ddi_buf_trans *
cnl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
{
 u32 voltage = I915_READ(CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;

 if (voltage == VOLTAGE_INFO_0_85V) {
  *n_entries = ARRAY_SIZE(cnl_ddi_translations_dp_0_85V);
  return cnl_ddi_translations_dp_0_85V;
 } else if (voltage == VOLTAGE_INFO_0_95V) {
  *n_entries = ARRAY_SIZE(cnl_ddi_translations_dp_0_95V);
  return cnl_ddi_translations_dp_0_95V;
 } else if (voltage == VOLTAGE_INFO_1_05V) {
  *n_entries = ARRAY_SIZE(cnl_ddi_translations_dp_1_05V);
  return cnl_ddi_translations_dp_1_05V;
 } else {
  *n_entries = 1;
  MISSING_CASE(voltage);
 }
 return ((void*)0);
}
