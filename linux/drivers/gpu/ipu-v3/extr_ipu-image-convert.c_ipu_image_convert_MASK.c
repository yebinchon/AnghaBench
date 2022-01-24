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
struct ipu_soc {int dummy; } ;
struct ipu_image_convert_run {int /*<<< orphan*/  out_phys; int /*<<< orphan*/  in_phys; struct ipu_image_convert_ctx* ctx; } ;
struct ipu_image_convert_ctx {int dummy; } ;
struct ipu_image {int /*<<< orphan*/  phys0; } ;
typedef  int /*<<< orphan*/  ipu_image_convert_cb_t ;
typedef  enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef  enum ipu_ic_task { ____Placeholder_ipu_ic_task } ipu_ic_task ;

/* Variables and functions */
 int ENOMEM ; 
 struct ipu_image_convert_run* FUNC0 (struct ipu_image_convert_ctx*) ; 
 struct ipu_image_convert_run* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct ipu_image_convert_ctx*) ; 
 struct ipu_image_convert_ctx* FUNC3 (struct ipu_soc*,int,struct ipu_image*,struct ipu_image*,int,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (struct ipu_image_convert_run*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipu_image_convert_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipu_image_convert_run*) ; 
 struct ipu_image_convert_run* FUNC7 (int,int /*<<< orphan*/ ) ; 

struct ipu_image_convert_run *
FUNC8(struct ipu_soc *ipu, enum ipu_ic_task ic_task,
		  struct ipu_image *in, struct ipu_image *out,
		  enum ipu_rotate_mode rot_mode,
		  ipu_image_convert_cb_t complete,
		  void *complete_context)
{
	struct ipu_image_convert_ctx *ctx;
	struct ipu_image_convert_run *run;
	int ret;

	ctx = FUNC3(ipu, ic_task, in, out, rot_mode,
					complete, complete_context);
	if (FUNC2(ctx))
		return FUNC0(ctx);

	run = FUNC7(sizeof(*run), GFP_KERNEL);
	if (!run) {
		FUNC5(ctx);
		return FUNC1(-ENOMEM);
	}

	run->ctx = ctx;
	run->in_phys = in->phys0;
	run->out_phys = out->phys0;

	ret = FUNC4(run);
	if (ret) {
		FUNC5(ctx);
		FUNC6(run);
		return FUNC1(ret);
	}

	return run;
}