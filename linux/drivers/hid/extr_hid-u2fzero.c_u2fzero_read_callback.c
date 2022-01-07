
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; struct u2fzero_transfer_context* context; } ;
struct u2fzero_transfer_context {int done; int status; } ;


 int complete (int *) ;

__attribute__((used)) static void u2fzero_read_callback(struct urb *urb)
{
 struct u2fzero_transfer_context *ctx = urb->context;

 ctx->status = urb->status;
 complete(&ctx->done);
}
