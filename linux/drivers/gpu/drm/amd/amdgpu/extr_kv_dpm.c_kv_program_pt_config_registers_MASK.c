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
struct kv_pt_config_reg {int offset; int type; int value; int shift; int mask; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int KV_CONFIGREG_CACHE ; 
#define  KV_CONFIGREG_DIDT_IND 129 
#define  KV_CONFIGREG_SMC_IND 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
					  const struct kv_pt_config_reg *cac_config_regs)
{
	const struct kv_pt_config_reg *config_regs = cac_config_regs;
	u32 data;
	u32 cache = 0;

	if (config_regs == NULL)
		return -EINVAL;

	while (config_regs->offset != 0xFFFFFFFF) {
		if (config_regs->type == KV_CONFIGREG_CACHE) {
			cache |= ((config_regs->value << config_regs->shift) & config_regs->mask);
		} else {
			switch (config_regs->type) {
			case KV_CONFIGREG_SMC_IND:
				data = FUNC2(config_regs->offset);
				break;
			case KV_CONFIGREG_DIDT_IND:
				data = FUNC1(config_regs->offset);
				break;
			default:
				data = FUNC0(config_regs->offset);
				break;
			}

			data &= ~config_regs->mask;
			data |= ((config_regs->value << config_regs->shift) & config_regs->mask);
			data |= cache;
			cache = 0;

			switch (config_regs->type) {
			case KV_CONFIGREG_SMC_IND:
				FUNC5(config_regs->offset, data);
				break;
			case KV_CONFIGREG_DIDT_IND:
				FUNC4(config_regs->offset, data);
				break;
			default:
				FUNC3(config_regs->offset, data);
				break;
			}
		}
		config_regs++;
	}

	return 0;
}