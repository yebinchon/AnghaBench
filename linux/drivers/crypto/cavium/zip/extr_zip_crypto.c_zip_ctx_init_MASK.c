#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct zip_operation {void* input; void* output; } ;
struct zip_kernel_ctx {struct zip_operation zip_decomp; struct zip_operation zip_comp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_INPUT_BUFFER_SIZE ; 
 int /*<<< orphan*/  MAX_OUTPUT_BUFFER_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zip_operation*,int) ; 

__attribute__((used)) static int FUNC3(struct zip_kernel_ctx *zip_ctx, int lzs_flag)
{
	struct zip_operation  *comp_ctx   = &zip_ctx->zip_comp;
	struct zip_operation  *decomp_ctx = &zip_ctx->zip_decomp;

	FUNC2(comp_ctx, lzs_flag);
	FUNC2(decomp_ctx, lzs_flag);

	comp_ctx->input  = FUNC0(MAX_INPUT_BUFFER_SIZE);
	if (!comp_ctx->input)
		return -ENOMEM;

	comp_ctx->output = FUNC0(MAX_OUTPUT_BUFFER_SIZE);
	if (!comp_ctx->output)
		goto err_comp_input;

	decomp_ctx->input  = FUNC0(MAX_INPUT_BUFFER_SIZE);
	if (!decomp_ctx->input)
		goto err_comp_output;

	decomp_ctx->output = FUNC0(MAX_OUTPUT_BUFFER_SIZE);
	if (!decomp_ctx->output)
		goto err_decomp_input;

	return 0;

err_decomp_input:
	FUNC1(decomp_ctx->input, MAX_INPUT_BUFFER_SIZE);

err_comp_output:
	FUNC1(comp_ctx->output, MAX_OUTPUT_BUFFER_SIZE);

err_comp_input:
	FUNC1(comp_ctx->input, MAX_INPUT_BUFFER_SIZE);

	return -ENOMEM;
}