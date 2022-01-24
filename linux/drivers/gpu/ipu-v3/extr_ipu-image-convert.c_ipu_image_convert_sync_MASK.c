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
struct ipu_image_convert_run {int /*<<< orphan*/  ctx; } ;
struct ipu_image {int dummy; } ;
struct completion {int dummy; } ;
typedef  enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef  enum ipu_ic_task { ____Placeholder_ipu_ic_task } ipu_ic_task ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct ipu_image_convert_run*) ; 
 int FUNC1 (struct ipu_image_convert_run*) ; 
 int /*<<< orphan*/  image_convert_sync_complete ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 struct ipu_image_convert_run* FUNC3 (struct ipu_soc*,int,struct ipu_image*,struct ipu_image*,int,int /*<<< orphan*/ ,struct completion*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipu_image_convert_run*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct completion*,int /*<<< orphan*/ ) ; 

int FUNC8(struct ipu_soc *ipu, enum ipu_ic_task ic_task,
			   struct ipu_image *in, struct ipu_image *out,
			   enum ipu_rotate_mode rot_mode)
{
	struct ipu_image_convert_run *run;
	struct completion comp;
	int ret;

	FUNC2(&comp);

	run = FUNC3(ipu, ic_task, in, out, rot_mode,
				image_convert_sync_complete, &comp);
	if (FUNC0(run))
		return FUNC1(run);

	ret = FUNC7(&comp, FUNC6(10000));
	ret = (ret == 0) ? -ETIMEDOUT : 0;

	FUNC4(run->ctx);
	FUNC5(run);

	return ret;
}