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
struct smu_dpm_context {int dpm_level; int /*<<< orphan*/  dpm_context; } ;
struct smu_context {int /*<<< orphan*/  mutex; struct smu_dpm_context smu_dpm; } ;
typedef  enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

enum amd_dpm_forced_level FUNC2(struct smu_context *smu)
{
	struct smu_dpm_context *smu_dpm_ctx = &(smu->smu_dpm);
	enum amd_dpm_forced_level level;

	if (!smu_dpm_ctx->dpm_context)
		return -EINVAL;

	FUNC0(&(smu->mutex));
	level = smu_dpm_ctx->dpm_level;
	FUNC1(&(smu->mutex));

	return level;
}