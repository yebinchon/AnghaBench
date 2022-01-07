
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_operation {int output; int input; } ;
struct zip_kernel_ctx {struct zip_operation zip_decomp; struct zip_operation zip_comp; } ;


 int MAX_INPUT_BUFFER_SIZE ;
 int MAX_OUTPUT_BUFFER_SIZE ;
 int zip_data_buf_free (int ,int ) ;

__attribute__((used)) static void zip_ctx_exit(struct zip_kernel_ctx *zip_ctx)
{
 struct zip_operation *comp_ctx = &zip_ctx->zip_comp;
 struct zip_operation *dec_ctx = &zip_ctx->zip_decomp;

 zip_data_buf_free(comp_ctx->input, MAX_INPUT_BUFFER_SIZE);
 zip_data_buf_free(comp_ctx->output, MAX_OUTPUT_BUFFER_SIZE);

 zip_data_buf_free(dec_ctx->input, MAX_INPUT_BUFFER_SIZE);
 zip_data_buf_free(dec_ctx->output, MAX_OUTPUT_BUFFER_SIZE);
}
