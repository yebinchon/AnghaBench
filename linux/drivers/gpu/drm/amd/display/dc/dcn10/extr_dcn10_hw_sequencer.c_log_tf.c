
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {TYPE_3__* blue; TYPE_2__* green; TYPE_1__* red; } ;
struct dc_transfer_func {TYPE_4__ tf_pts; } ;
struct dc_context {int logger; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int value; } ;


 int DC_LOGGER_INIT (int ) ;
 int DC_LOG_ALL_GAMMA (char*,...) ;
 int DC_LOG_ALL_TF_CHANNELS (char*,...) ;
 int DC_LOG_GAMMA (char*,...) ;
 int MAX_NUM_HW_POINTS ;

__attribute__((used)) static void log_tf(struct dc_context *ctx,
    struct dc_transfer_func *tf, uint32_t hw_points_num)
{



 int i = 0;

 DC_LOGGER_INIT(ctx->logger);
 DC_LOG_GAMMA("Gamma Correction TF");
 DC_LOG_ALL_GAMMA("Logging all tf points...");
 DC_LOG_ALL_TF_CHANNELS("Logging all channels...");

 for (i = 0; i < hw_points_num; i++) {
  DC_LOG_GAMMA("R\t%d\t%llu\n", i, tf->tf_pts.red[i].value);
  DC_LOG_ALL_TF_CHANNELS("G\t%d\t%llu\n", i, tf->tf_pts.green[i].value);
  DC_LOG_ALL_TF_CHANNELS("B\t%d\t%llu\n", i, tf->tf_pts.blue[i].value);
 }

 for (i = hw_points_num; i < MAX_NUM_HW_POINTS; i++) {
  DC_LOG_ALL_GAMMA("R\t%d\t%llu\n", i, tf->tf_pts.red[i].value);
  DC_LOG_ALL_TF_CHANNELS("G\t%d\t%llu\n", i, tf->tf_pts.green[i].value);
  DC_LOG_ALL_TF_CHANNELS("B\t%d\t%llu\n", i, tf->tf_pts.blue[i].value);
 }
}
