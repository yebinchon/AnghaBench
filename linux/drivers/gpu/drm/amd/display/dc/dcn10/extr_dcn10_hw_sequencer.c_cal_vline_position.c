
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct pipe_ctx {TYPE_3__* stream; } ;
typedef enum vline_select { ____Placeholder_vline_select } vline_select ;
typedef enum vertical_interrupt_ref_point { ____Placeholder_vertical_interrupt_ref_point } vertical_interrupt_ref_point ;
struct TYPE_5__ {int ref_point; } ;
struct TYPE_4__ {int ref_point; } ;
struct TYPE_6__ {TYPE_2__ periodic_interrupt1; TYPE_1__ periodic_interrupt0; } ;


 int ASSERT (int ) ;
 int INVALID_POINT ;


 int VLINE0 ;
 int VLINE1 ;
 int calc_vupdate_position (struct pipe_ctx*,int *,int *) ;

__attribute__((used)) static void cal_vline_position(
  struct pipe_ctx *pipe_ctx,
  enum vline_select vline,
  uint32_t *start_line,
  uint32_t *end_line)
{
 enum vertical_interrupt_ref_point ref_point = INVALID_POINT;

 if (vline == VLINE0)
  ref_point = pipe_ctx->stream->periodic_interrupt0.ref_point;
 else if (vline == VLINE1)
  ref_point = pipe_ctx->stream->periodic_interrupt1.ref_point;

 switch (ref_point) {
 case 128:
  calc_vupdate_position(
    pipe_ctx,
    start_line,
    end_line);
  break;
 case 129:

  break;
 default:
  ASSERT(0);
  break;
 }
}
