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
struct msm_gpu {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GPU_PAS_ID ; 
 int /*<<< orphan*/  SCM_GPU_ZAP_SHADER_RESUME ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct msm_gpu *gpu)
{
	int ret;

	ret = FUNC1(SCM_GPU_ZAP_SHADER_RESUME, GPU_PAS_ID);
	if (ret)
		FUNC0("%s: zap-shader resume failed: %d\n",
			gpu->name, ret);

	return ret;
}