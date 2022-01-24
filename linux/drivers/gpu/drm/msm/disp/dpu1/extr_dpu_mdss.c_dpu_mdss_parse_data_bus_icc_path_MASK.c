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
struct icc_path {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct dpu_mdss {int num_paths; struct icc_path** path; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct icc_path*) ; 
 int FUNC1 (struct icc_path*) ; 
 struct icc_path* FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev,
						struct dpu_mdss *dpu_mdss)
{
	struct icc_path *path0 = FUNC2(dev->dev, "mdp0-mem");
	struct icc_path *path1 = FUNC2(dev->dev, "mdp1-mem");

	if (FUNC0(path0))
		return FUNC1(path0);

	dpu_mdss->path[0] = path0;
	dpu_mdss->num_paths = 1;

	if (!FUNC0(path1)) {
		dpu_mdss->path[1] = path1;
		dpu_mdss->num_paths++;
	}

	return 0;
}