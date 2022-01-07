
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_head {int state; TYPE_2__* dev; } ;
struct r5l_recovery_ctx {int meta_total_blocks; } ;
struct r5l_payload_data_parity {int * checksum; int location; } ;
struct r5l_log {TYPE_1__* rdev; } ;
struct r5conf {int dummy; } ;
struct mddev {struct r5conf* private; } ;
typedef int sector_t ;
struct TYPE_4__ {int flags; int log_checksum; int page; } ;
struct TYPE_3__ {struct mddev* mddev; } ;


 scalar_t__ BLOCK_SECTORS ;
 int R5_Wantwrite ;
 int STRIPE_R5C_CACHING ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int r5l_recovery_read_page (struct r5l_log*,struct r5l_recovery_ctx*,int ,int ) ;
 int raid5_compute_sector (struct r5conf*,int ,int ,int*,struct stripe_head*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void r5l_recovery_load_data(struct r5l_log *log,
       struct stripe_head *sh,
       struct r5l_recovery_ctx *ctx,
       struct r5l_payload_data_parity *payload,
       sector_t log_offset)
{
 struct mddev *mddev = log->rdev->mddev;
 struct r5conf *conf = mddev->private;
 int dd_idx;

 raid5_compute_sector(conf,
        le64_to_cpu(payload->location), 0,
        &dd_idx, sh);
 r5l_recovery_read_page(log, ctx, sh->dev[dd_idx].page, log_offset);
 sh->dev[dd_idx].log_checksum =
  le32_to_cpu(payload->checksum[0]);
 ctx->meta_total_blocks += BLOCK_SECTORS;

 set_bit(R5_Wantwrite, &sh->dev[dd_idx].flags);
 set_bit(STRIPE_R5C_CACHING, &sh->state);
}
