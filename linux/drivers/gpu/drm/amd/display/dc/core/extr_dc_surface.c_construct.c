
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dc_plane_state {TYPE_3__* blend_tf; TYPE_5__* lut3d_func; TYPE_2__* in_shaper_func; TYPE_1__* in_transfer_func; TYPE_4__* gamma_correction; struct dc_context* ctx; } ;
struct dc_context {int dummy; } ;
struct TYPE_10__ {struct dc_context* ctx; } ;
struct TYPE_9__ {int is_identity; } ;
struct TYPE_8__ {struct dc_context* ctx; void* type; } ;
struct TYPE_7__ {struct dc_context* ctx; void* type; } ;
struct TYPE_6__ {struct dc_context* ctx; void* type; } ;


 void* TF_TYPE_BYPASS ;
 TYPE_5__* dc_create_3dlut_func () ;
 TYPE_4__* dc_create_gamma () ;
 void* dc_create_transfer_func () ;

__attribute__((used)) static void construct(struct dc_context *ctx, struct dc_plane_state *plane_state)
{
 plane_state->ctx = ctx;

 plane_state->gamma_correction = dc_create_gamma();
 if (plane_state->gamma_correction != ((void*)0))
  plane_state->gamma_correction->is_identity = 1;

 plane_state->in_transfer_func = dc_create_transfer_func();
 if (plane_state->in_transfer_func != ((void*)0)) {
  plane_state->in_transfer_func->type = TF_TYPE_BYPASS;
  plane_state->in_transfer_func->ctx = ctx;
 }
}
