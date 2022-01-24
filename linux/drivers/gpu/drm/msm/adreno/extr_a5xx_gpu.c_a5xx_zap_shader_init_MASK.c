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
struct msm_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPU_PAS_ID ; 
 int FUNC0 (struct msm_gpu*) ; 
 int FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct msm_gpu *gpu)
{
	static bool loaded;
	int ret;

	/*
	 * If the zap shader is already loaded into memory we just need to kick
	 * the remote processor to reinitialize it
	 */
	if (loaded)
		return FUNC0(gpu);

	ret = FUNC1(gpu, GPU_PAS_ID);

	loaded = !ret;
	return ret;
}