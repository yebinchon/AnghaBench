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
typedef  int u32 ;
struct intel_vgpu {int /*<<< orphan*/  id; TYPE_1__* gvt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int GAMW_ECO_ENABLE_64K_IPS_FIELD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*,unsigned int,void*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct intel_vgpu *vgpu,
		unsigned int offset, void *p_data, unsigned int bytes)
{
	u32 ips = (*(u32 *)p_data) & GAMW_ECO_ENABLE_64K_IPS_FIELD;

	if (FUNC0(vgpu->gvt->dev_priv) <= 10) {
		if (ips == GAMW_ECO_ENABLE_64K_IPS_FIELD)
			FUNC1("vgpu%d: ips enabled\n", vgpu->id);
		else if (!ips)
			FUNC1("vgpu%d: ips disabled\n", vgpu->id);
		else {
			/* All engines must be enabled together for vGPU,
			 * since we don't know which engine the ppgtt will
			 * bind to when shadowing.
			 */
			FUNC2("Unsupported IPS setting %x, cannot enable 64K gtt.\n",
				     ips);
			return -EINVAL;
		}
	}

	FUNC3(vgpu, offset, p_data, bytes);
	return 0;
}