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
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum psp_ring_type { ____Placeholder_psp_ring_type } psp_ring_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_CTRL_CMD_ID_DESTROY_GPCOM_RING ; 
 int /*<<< orphan*/  GFX_CTRL_CMD_ID_DESTROY_RINGS ; 
 int /*<<< orphan*/  MP0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_101 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_64 ; 
 scalar_t__ FUNC3 (struct psp_context*) ; 
 int FUNC4 (struct psp_context*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct psp_context *psp,
			      enum psp_ring_type ring_type)
{
	int ret = 0;
	struct amdgpu_device *adev = psp->adev;

	/* Write the ring destroy command*/
	if (FUNC3(psp))
		FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_101,
				     GFX_CTRL_CMD_ID_DESTROY_GPCOM_RING);
	else
		FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_64,
				     GFX_CTRL_CMD_ID_DESTROY_RINGS);

	/* there might be handshake issue with hardware which needs delay */
	FUNC2(20);

	/* Wait for response flag (bit 31) */
	if (FUNC3(psp))
		ret = FUNC4(psp, FUNC0(MP0, 0, mmMP0_SMN_C2PMSG_101),
				   0x80000000, 0x80000000, false);
	else
		ret = FUNC4(psp, FUNC0(MP0, 0, mmMP0_SMN_C2PMSG_64),
				   0x80000000, 0x80000000, false);

	return ret;
}