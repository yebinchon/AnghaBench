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
typedef  int /*<<< orphan*/  uint32_t ;
struct smu_context {int /*<<< orphan*/  mutex; } ;
typedef  enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;

/* Variables and functions */
 int EINVAL ; 
#define  SMU_GFXCLK 130 
 int /*<<< orphan*/  SMU_MSG_GetMaxGfxclkFrequency ; 
 int /*<<< orphan*/  SMU_MSG_GetMinGfxclkFrequency ; 
#define  SMU_SCLK 129 
#define  SMU_UCLK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct smu_context*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct smu_context*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct smu_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct smu_context *smu, enum smu_clk_type clk_type,
						 uint32_t *min, uint32_t *max)
{
	int ret = 0;

	FUNC0(&smu->mutex);

	if (max) {
		switch (clk_type) {
		case SMU_GFXCLK:
		case SMU_SCLK:
			ret = FUNC5(smu, SMU_MSG_GetMaxGfxclkFrequency);
			if (ret) {
				FUNC2("Attempt to get max GX frequency from SMC Failed !\n");
				goto failed;
			}
			ret = FUNC4(smu, max);
			if (ret)
				goto failed;
			break;
		case SMU_UCLK:
			ret = FUNC3(smu, max, true);
			if (ret)
				goto failed;
			break;
		default:
			ret = -EINVAL;
			goto failed;

		}
	}

	if (min) {
		switch (clk_type) {
		case SMU_GFXCLK:
		case SMU_SCLK:
			ret = FUNC5(smu, SMU_MSG_GetMinGfxclkFrequency);
			if (ret) {
				FUNC2("Attempt to get min GX frequency from SMC Failed !\n");
				goto failed;
			}
			ret = FUNC4(smu, min);
			if (ret)
				goto failed;
			break;
		case SMU_UCLK:
			ret = FUNC3(smu, min, false);
			if (ret)
				goto failed;
			break;
		default:
			ret = -EINVAL;
			goto failed;
		}

	}
failed:
	FUNC1(&smu->mutex);
	return ret;
}