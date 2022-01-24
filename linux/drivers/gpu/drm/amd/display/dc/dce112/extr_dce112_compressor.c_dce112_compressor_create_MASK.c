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
struct compressor {int dummy; } ;
struct dce112_compressor {struct compressor base; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dce112_compressor*,struct dc_context*) ; 
 struct dce112_compressor* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct compressor *FUNC2(struct dc_context *ctx)
{
	struct dce112_compressor *cp110 =
		FUNC1(sizeof(struct dce112_compressor), GFP_KERNEL);

	if (!cp110)
		return NULL;

	FUNC0(cp110, ctx);
	return &cp110->base;
}