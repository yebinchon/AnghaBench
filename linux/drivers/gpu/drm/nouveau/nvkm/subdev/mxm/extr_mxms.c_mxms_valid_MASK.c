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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct nvkm_mxm {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_mxm*) ; 
 int /*<<< orphan*/ * FUNC1 (struct nvkm_mxm*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_mxm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

bool
FUNC4(struct nvkm_mxm *mxm)
{
	u8 *mxms = FUNC1(mxm);
	if (*(u32 *)mxms != 0x5f4d584d) {
		FUNC3(&mxm->subdev, "signature invalid\n");
		return false;
	}

	if (!FUNC2(mxm) || !FUNC0(mxm))
		return false;

	return true;
}