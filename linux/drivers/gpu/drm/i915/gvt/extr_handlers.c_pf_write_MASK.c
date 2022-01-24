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
struct intel_vgpu {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int PS_PLANE_SEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 unsigned int _PS_1A_CTRL ; 
 unsigned int _PS_1B_CTRL ; 
 unsigned int _PS_1C_CTRL ; 
 unsigned int _PS_2A_CTRL ; 
 unsigned int _PS_2B_CTRL ; 
 int FUNC1 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct intel_vgpu *vgpu,
		unsigned int offset, void *p_data, unsigned int bytes)
{
	u32 val = *(u32 *)p_data;

	if ((offset == _PS_1A_CTRL || offset == _PS_2A_CTRL ||
	   offset == _PS_1B_CTRL || offset == _PS_2B_CTRL ||
	   offset == _PS_1C_CTRL) && (val & PS_PLANE_SEL_MASK) != 0) {
		FUNC0(true, "VM(%d): guest is trying to scaling a plane\n",
			  vgpu->id);
		return 0;
	}

	return FUNC1(vgpu, offset, p_data, bytes);
}