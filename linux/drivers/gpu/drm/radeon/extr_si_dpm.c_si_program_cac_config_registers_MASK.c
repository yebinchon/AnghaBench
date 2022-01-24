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
struct si_cac_config_reg {int offset; int type; int mask; int value; int shift; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
#define  SISLANDS_CACCONFIG_CGIND 128 
 int SMC_CG_IND_END ; 
 int /*<<< orphan*/  SMC_CG_IND_START ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev,
					   const struct si_cac_config_reg *cac_config_regs)
{
	const struct si_cac_config_reg *config_regs = cac_config_regs;
	u32 data = 0, offset;

	if (!config_regs)
		return -EINVAL;

	while (config_regs->offset != 0xFFFFFFFF) {
		switch (config_regs->type) {
		case SISLANDS_CACCONFIG_CGIND:
			offset = SMC_CG_IND_START + config_regs->offset;
			if (offset < SMC_CG_IND_END)
				data = FUNC1(offset);
			break;
		default:
			data = FUNC0(config_regs->offset << 2);
			break;
		}

		data &= ~config_regs->mask;
		data |= ((config_regs->value << config_regs->shift) & config_regs->mask);

		switch (config_regs->type) {
		case SISLANDS_CACCONFIG_CGIND:
			offset = SMC_CG_IND_START + config_regs->offset;
			if (offset < SMC_CG_IND_END)
				FUNC3(offset, data);
			break;
		default:
			FUNC2(config_regs->offset << 2, data);
			break;
		}
		config_regs++;
	}
	return 0;
}