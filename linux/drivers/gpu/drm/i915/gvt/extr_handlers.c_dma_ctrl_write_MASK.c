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
typedef  int /*<<< orphan*/  u32 ;
struct intel_vgpu {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  START_DMA ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct intel_vgpu *vgpu, unsigned int offset,
		void *p_data, unsigned int bytes)
{
	u32 mode;

	FUNC3(vgpu, offset, p_data, bytes);
	mode = FUNC2(vgpu, offset);

	if (FUNC0(mode, START_DMA)) {
		FUNC1(1, "VM(%d): iGVT-g doesn't support GuC\n",
				vgpu->id);
		return 0;
	}

	return 0;
}