
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_error_state_buf {int dummy; } ;


 int err_puts (struct drm_i915_error_state_buf*,char*) ;

__attribute__((used)) static void err_compression_marker(struct drm_i915_error_state_buf *m)
{
 err_puts(m, "~");
}
