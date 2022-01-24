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
struct drm_self_refresh_data {int /*<<< orphan*/  exit_avg_ms; int /*<<< orphan*/  entry_avg_ms; int /*<<< orphan*/  avg_mutex; struct drm_crtc* crtc; int /*<<< orphan*/  entry_work; } ;
struct drm_crtc {struct drm_self_refresh_data* self_refresh_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SELF_REFRESH_AVG_SEED_MS ; 
 scalar_t__ FUNC1 (struct drm_self_refresh_data*) ; 
 int /*<<< orphan*/  drm_self_refresh_helper_entry_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_self_refresh_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_crtc *crtc)
{
	struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;

	/* Helper is already initialized */
	if (FUNC1(sr_data))
		return -EINVAL;

	sr_data = FUNC4(sizeof(*sr_data), GFP_KERNEL);
	if (!sr_data)
		return -ENOMEM;

	FUNC0(&sr_data->entry_work,
			  drm_self_refresh_helper_entry_work);
	sr_data->crtc = crtc;
	FUNC5(&sr_data->avg_mutex);
	FUNC3(&sr_data->entry_avg_ms);
	FUNC3(&sr_data->exit_avg_ms);

	/*
	 * Seed the averages so they're non-zero (and sufficiently large
	 * for even poorly performing panels). As time goes on, this will be
	 * averaged out and the values will trend to their true value.
	 */
	FUNC2(&sr_data->entry_avg_ms, SELF_REFRESH_AVG_SEED_MS);
	FUNC2(&sr_data->exit_avg_ms, SELF_REFRESH_AVG_SEED_MS);

	crtc->self_refresh_data = sr_data;
	return 0;
}