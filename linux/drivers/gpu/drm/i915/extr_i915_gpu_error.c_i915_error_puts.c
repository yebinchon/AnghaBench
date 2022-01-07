
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_error_state_buf {scalar_t__ bytes; scalar_t__ size; scalar_t__ buf; scalar_t__ err; } ;


 int GEM_BUG_ON (int) ;
 int __i915_error_grow (struct drm_i915_error_state_buf*,unsigned int) ;
 int memcpy (scalar_t__,char const*,unsigned int) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static void i915_error_puts(struct drm_i915_error_state_buf *e, const char *str)
{
 unsigned len;

 if (e->err || !str)
  return;

 len = strlen(str);
 if (!__i915_error_grow(e, len))
  return;

 GEM_BUG_ON(e->bytes + len > e->size);
 memcpy(e->buf + e->bytes, str, len);
 e->bytes += len;
}
