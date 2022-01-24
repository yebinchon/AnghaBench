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
struct nvkm_secboot {int dummy; } ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_falcon {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_secboot*,struct nvkm_gpuobj*,struct nvkm_falcon*) ; 
 int FUNC1 (struct nvkm_secboot*) ; 
 scalar_t__ FUNC2 (struct nvkm_secboot*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_secboot *sb, struct nvkm_gpuobj *blob,
		       struct nvkm_falcon *falcon)
{
	int ret;

	/* make sure the VPR region is unlocked */
	if (FUNC2(sb)) {
		ret = FUNC1(sb);
		if (ret)
			return ret;
	}

	return FUNC0(sb, blob, falcon);
}