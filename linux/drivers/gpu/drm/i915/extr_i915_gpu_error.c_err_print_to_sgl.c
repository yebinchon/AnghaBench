
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gpu_state {int sgl; int i915; } ;
struct drm_i915_error_state_buf {scalar_t__ cur; scalar_t__ end; int err; scalar_t__ sgl; int * buf; scalar_t__ bytes; int iter; int i915; } ;
typedef int m ;


 int GEM_BUG_ON (int) ;
 scalar_t__ IS_ERR (struct i915_gpu_state*) ;
 int PTR_ERR (struct i915_gpu_state*) ;
 scalar_t__ READ_ONCE (int ) ;
 int __err_print_to_sgl (struct drm_i915_error_state_buf*,struct i915_gpu_state*) ;
 int __sg_set_buf (int ,int *,scalar_t__,int ) ;
 scalar_t__ cmpxchg (int *,int *,scalar_t__) ;
 int err_free_sgl (scalar_t__) ;
 int memset (struct drm_i915_error_state_buf*,int ,int) ;
 int sg_mark_end (scalar_t__) ;

__attribute__((used)) static int err_print_to_sgl(struct i915_gpu_state *error)
{
 struct drm_i915_error_state_buf m;

 if (IS_ERR(error))
  return PTR_ERR(error);

 if (READ_ONCE(error->sgl))
  return 0;

 memset(&m, 0, sizeof(m));
 m.i915 = error->i915;

 __err_print_to_sgl(&m, error);

 if (m.buf) {
  __sg_set_buf(m.cur++, m.buf, m.bytes, m.iter);
  m.bytes = 0;
  m.buf = ((void*)0);
 }
 if (m.cur) {
  GEM_BUG_ON(m.end < m.cur);
  sg_mark_end(m.cur - 1);
 }
 GEM_BUG_ON(m.sgl && !m.cur);

 if (m.err) {
  err_free_sgl(m.sgl);
  return m.err;
 }

 if (cmpxchg(&error->sgl, ((void*)0), m.sgl))
  err_free_sgl(m.sgl);

 return 0;
}
