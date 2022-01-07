
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CSR_HTP_SKL ;
 int CSR_PROGRAM (int ) ;
 int CSR_SSP_BASE ;
 int I915_READ (int ) ;
 int WARN_ONCE (int,char*) ;

__attribute__((used)) static void assert_csr_loaded(struct drm_i915_private *dev_priv)
{
 WARN_ONCE(!I915_READ(CSR_PROGRAM(0)),
    "CSR program storage start is NULL\n");
 WARN_ONCE(!I915_READ(CSR_SSP_BASE), "CSR SSP Base Not fine\n");
 WARN_ONCE(!I915_READ(CSR_HTP_SKL), "CSR HTP Not fine\n");
}
