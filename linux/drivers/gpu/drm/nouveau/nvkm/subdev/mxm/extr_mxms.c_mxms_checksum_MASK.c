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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct nvkm_mxm {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (struct nvkm_mxm*) ; 
 scalar_t__ FUNC1 (struct nvkm_mxm*) ; 
 scalar_t__ FUNC2 (struct nvkm_mxm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

bool
FUNC4(struct nvkm_mxm *mxm)
{
	u16 size = FUNC1(mxm) + FUNC2(mxm);
	u8 *mxms = FUNC0(mxm), sum = 0;
	while (size--)
		sum += *mxms++;
	if (sum) {
		FUNC3(&mxm->subdev, "checksum invalid\n");
		return false;
	}
	return true;
}