
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gpu_state {char const* error_msg; TYPE_2__* engine; int i915; } ;
typedef int intel_engine_mask_t ;
struct TYPE_3__ {int pid; int comm; } ;
struct TYPE_4__ {TYPE_1__ context; } ;


 int INTEL_GEN (int ) ;
 int i915_error_generate_code (struct i915_gpu_state*) ;
 int scnprintf (char const*,int,char*,char const*,...) ;

__attribute__((used)) static const char *
error_msg(struct i915_gpu_state *error,
   intel_engine_mask_t engines, const char *msg)
{
 int len;

 len = scnprintf(error->error_msg, sizeof(error->error_msg),
   "GPU HANG: ecode %d:%x:0x%08x",
   INTEL_GEN(error->i915), engines,
   i915_error_generate_code(error));
 if (error->engine) {

  len += scnprintf(error->error_msg + len,
     sizeof(error->error_msg) - len,
     ", in %s [%d]",
     error->engine->context.comm,
     error->engine->context.pid);
 }
 if (msg)
  len += scnprintf(error->error_msg + len,
     sizeof(error->error_msg) - len,
     ", %s", msg);

 return error->error_msg;
}
