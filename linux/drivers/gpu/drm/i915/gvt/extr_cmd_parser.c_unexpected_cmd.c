
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser_exec_state {TYPE_1__* info; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int EBADRQC ;
 int gvt_vgpu_err (char*,int ) ;

__attribute__((used)) static inline int unexpected_cmd(struct parser_exec_state *s)
{
 struct intel_vgpu *vgpu = s->vgpu;

 gvt_vgpu_err("Unexpected %s in command buffer!\n", s->info->name);

 return -EBADRQC;
}
