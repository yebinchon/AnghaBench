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
typedef  int u32 ;
struct amdgpu_device {int dummy; } ;
typedef  enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PGFSM_CONFIG ; 
 int /*<<< orphan*/  DMA_PGFSM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(void *handle,
					  enum amd_powergating_state state)
{
	u32 tmp;

	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC0(DMA_PGFSM_WRITE,  0x00002000);
	FUNC0(DMA_PGFSM_CONFIG, 0x100010ff);

	for (tmp = 0; tmp < 5; tmp++)
		FUNC0(DMA_PGFSM_WRITE, 0);

	return 0;
}