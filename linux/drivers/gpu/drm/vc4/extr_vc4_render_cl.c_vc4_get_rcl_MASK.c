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
struct vc4_rcl_setup {int /*<<< orphan*/  msaa_zs_write; int /*<<< orphan*/  msaa_color_write; int /*<<< orphan*/  zs_write; int /*<<< orphan*/  color_write; int /*<<< orphan*/  zs_read; int /*<<< orphan*/  color_read; int /*<<< orphan*/  member_0; } ;
struct vc4_exec_info {scalar_t__ bin_tiles_x; scalar_t__ bin_tiles_y; struct drm_vc4_submit_cl* args; } ;
struct drm_vc4_submit_cl {scalar_t__ bin_cl_size; scalar_t__ min_x_tile; scalar_t__ max_x_tile; scalar_t__ min_y_tile; scalar_t__ max_y_tile; int /*<<< orphan*/  msaa_zs_write; int /*<<< orphan*/  msaa_color_write; int /*<<< orphan*/  zs_write; int /*<<< orphan*/  zs_read; int /*<<< orphan*/  color_read; int /*<<< orphan*/  color_write; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (struct drm_device*,struct vc4_exec_info*,struct vc4_rcl_setup*) ; 
 int FUNC2 (struct vc4_exec_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vc4_exec_info*,struct vc4_rcl_setup*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vc4_exec_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct drm_device *dev, struct vc4_exec_info *exec)
{
	struct vc4_rcl_setup setup = {0};
	struct drm_vc4_submit_cl *args = exec->args;
	bool has_bin = args->bin_cl_size != 0;
	int ret;

	if (args->min_x_tile > args->max_x_tile ||
	    args->min_y_tile > args->max_y_tile) {
		FUNC0("Bad render tile set (%d,%d)-(%d,%d)\n",
			  args->min_x_tile, args->min_y_tile,
			  args->max_x_tile, args->max_y_tile);
		return -EINVAL;
	}

	if (has_bin &&
	    (args->max_x_tile > exec->bin_tiles_x ||
	     args->max_y_tile > exec->bin_tiles_y)) {
		FUNC0("Render tiles (%d,%d) outside of bin config "
			  "(%d,%d)\n",
			  args->max_x_tile, args->max_y_tile,
			  exec->bin_tiles_x, exec->bin_tiles_y);
		return -EINVAL;
	}

	ret = FUNC3(exec, &setup,
						  &setup.color_write,
						  &args->color_write);
	if (ret)
		return ret;

	ret = FUNC4(exec, &setup.color_read, &args->color_read,
				    false);
	if (ret)
		return ret;

	ret = FUNC4(exec, &setup.zs_read, &args->zs_read,
				    false);
	if (ret)
		return ret;

	ret = FUNC4(exec, &setup.zs_write, &args->zs_write,
				    true);
	if (ret)
		return ret;

	ret = FUNC2(exec, &setup.msaa_color_write,
					 &args->msaa_color_write);
	if (ret)
		return ret;

	ret = FUNC2(exec, &setup.msaa_zs_write,
					 &args->msaa_zs_write);
	if (ret)
		return ret;

	/* We shouldn't even have the job submitted to us if there's no
	 * surface to write out.
	 */
	if (!setup.color_write && !setup.zs_write &&
	    !setup.msaa_color_write && !setup.msaa_zs_write) {
		FUNC0("RCL requires color or Z/S write\n");
		return -EINVAL;
	}

	return FUNC1(dev, exec, &setup);
}