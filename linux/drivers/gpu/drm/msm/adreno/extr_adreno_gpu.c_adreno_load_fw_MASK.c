#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct firmware {int dummy; } ;
struct adreno_gpu {struct firmware const** fw; TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const*) ; 
 struct firmware* FUNC3 (struct adreno_gpu*,int /*<<< orphan*/ ) ; 

int FUNC4(struct adreno_gpu *adreno_gpu)
{
	int i;

	for (i = 0; i < FUNC0(adreno_gpu->info->fw); i++) {
		const struct firmware *fw;

		if (!adreno_gpu->info->fw[i])
			continue;

		/* Skip if the firmware has already been loaded */
		if (adreno_gpu->fw[i])
			continue;

		fw = FUNC3(adreno_gpu, adreno_gpu->info->fw[i]);
		if (FUNC1(fw))
			return FUNC2(fw);

		adreno_gpu->fw[i] = fw;
	}

	return 0;
}