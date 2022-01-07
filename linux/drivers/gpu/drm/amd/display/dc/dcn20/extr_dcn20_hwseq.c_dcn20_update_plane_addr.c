
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* hubp; } ;
struct pipe_ctx {struct dc_plane_state* plane_state; TYPE_2__ plane_res; } ;
struct TYPE_10__ {int left_addr; } ;
struct TYPE_12__ {TYPE_4__ grph_stereo; int vmid; } ;
struct TYPE_9__ {TYPE_6__ current_address; TYPE_6__ requested_address; } ;
struct dc_plane_state {TYPE_6__ address; TYPE_3__ status; scalar_t__ flip_immediate; } ;
struct dc {int vm_helper; } ;
struct TYPE_11__ {TYPE_1__* funcs; int inst; } ;
struct TYPE_7__ {int (* hubp_program_surface_flip_and_addr ) (TYPE_5__*,TYPE_6__*,scalar_t__) ;} ;
typedef int PHYSICAL_ADDRESS_LOC ;


 int patch_address_for_sbs_tb_stereo (struct pipe_ctx*,int *) ;
 int stub1 (TYPE_5__*,TYPE_6__*,scalar_t__) ;
 int vm_helper_mark_vmid_used (int ,int ,int ) ;

__attribute__((used)) static void dcn20_update_plane_addr(const struct dc *dc, struct pipe_ctx *pipe_ctx)
{
 bool addr_patched = 0;
 PHYSICAL_ADDRESS_LOC addr;
 struct dc_plane_state *plane_state = pipe_ctx->plane_state;

 if (plane_state == ((void*)0))
  return;

 addr_patched = patch_address_for_sbs_tb_stereo(pipe_ctx, &addr);


 vm_helper_mark_vmid_used(dc->vm_helper, plane_state->address.vmid, pipe_ctx->plane_res.hubp->inst);

 pipe_ctx->plane_res.hubp->funcs->hubp_program_surface_flip_and_addr(
   pipe_ctx->plane_res.hubp,
   &plane_state->address,
   plane_state->flip_immediate);

 plane_state->status.requested_address = plane_state->address;

 if (plane_state->flip_immediate)
  plane_state->status.current_address = plane_state->address;

 if (addr_patched)
  pipe_ctx->plane_state->address.grph_stereo.left_addr = addr;
}
