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
typedef  int u8 ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int PCI_COMMAND_MEMORY ; 
 int FUNC0 (struct intel_vgpu*,int) ; 
 int FUNC1 (struct intel_vgpu*,int) ; 
 int* FUNC2 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct intel_vgpu *vgpu,
	unsigned int offset, void *p_data, unsigned int bytes)
{
	u8 old = FUNC2(vgpu)[offset];
	u8 new = *(u8 *)p_data;
	u8 changed = old ^ new;
	int ret;

	FUNC3(vgpu, offset, p_data, bytes);
	if (!(changed & PCI_COMMAND_MEMORY))
		return 0;

	if (old & PCI_COMMAND_MEMORY) {
		ret = FUNC1(vgpu, false);
		if (ret)
			return ret;
		ret = FUNC0(vgpu, false);
		if (ret)
			return ret;
	} else {
		ret = FUNC1(vgpu, true);
		if (ret)
			return ret;
		ret = FUNC0(vgpu, true);
		if (ret)
			return ret;
	}

	return 0;
}