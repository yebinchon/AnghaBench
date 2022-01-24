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
struct ast_private {int dummy; } ;
struct ast2300_dram_param {int reg_MADJ; int reg_SADJ; int dram_config; int reg_AC1; int reg_AC2; int reg_DQSIC; int reg_DQIDLY; int reg_DRV; int reg_IOZ; int madj_max; int reg_MRS; int reg_EMRS; int reg_FREQ; scalar_t__ rodt; scalar_t__ wodt; } ;

/* Variables and functions */
 int FUNC0 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*,int,int) ; 
 int FUNC2 (struct ast_private*,struct ast2300_dram_param*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ast_private *ast, struct ast2300_dram_param *param)
{
	u32 data, data2, retry = 0;

ddr2_init_start:
	FUNC1(ast, 0x1E6E0000, 0xFC600309);
	FUNC1(ast, 0x1E6E0018, 0x00000100);
	FUNC1(ast, 0x1E6E0024, 0x00000000);
	FUNC1(ast, 0x1E6E0064, param->reg_MADJ);
	FUNC1(ast, 0x1E6E0068, param->reg_SADJ);
	FUNC3(10);
	FUNC1(ast, 0x1E6E0064, param->reg_MADJ | 0xC0000);
	FUNC3(10);

	FUNC1(ast, 0x1E6E0004, param->dram_config);
	FUNC1(ast, 0x1E6E0008, 0x90040f);
	FUNC1(ast, 0x1E6E0010, param->reg_AC1);
	FUNC1(ast, 0x1E6E0014, param->reg_AC2);
	FUNC1(ast, 0x1E6E0020, param->reg_DQSIC);
	FUNC1(ast, 0x1E6E0080, 0x00000000);
	FUNC1(ast, 0x1E6E0084, 0x00000000);
	FUNC1(ast, 0x1E6E0088, param->reg_DQIDLY);
	FUNC1(ast, 0x1E6E0018, 0x4000A130);
	FUNC1(ast, 0x1E6E0018, 0x00002330);
	FUNC1(ast, 0x1E6E0038, 0x00000000);
	FUNC1(ast, 0x1E6E0040, 0xFF808000);
	FUNC1(ast, 0x1E6E0044, 0x88848466);
	FUNC1(ast, 0x1E6E0048, 0x44440008);
	FUNC1(ast, 0x1E6E004C, 0x00000000);
	FUNC1(ast, 0x1E6E0050, 0x80000000);
	FUNC1(ast, 0x1E6E0050, 0x00000000);
	FUNC1(ast, 0x1E6E0054, 0);
	FUNC1(ast, 0x1E6E0060, param->reg_DRV);
	FUNC1(ast, 0x1E6E006C, param->reg_IOZ);
	FUNC1(ast, 0x1E6E0070, 0x00000000);
	FUNC1(ast, 0x1E6E0074, 0x00000000);
	FUNC1(ast, 0x1E6E0078, 0x00000000);
	FUNC1(ast, 0x1E6E007C, 0x00000000);

	/* Wait MCLK2X lock to MCLK */
	do {
		data = FUNC0(ast, 0x1E6E001C);
	} while (!(data & 0x08000000));
	data = FUNC0(ast, 0x1E6E001C);
	data = (data >> 8) & 0xff;
	while ((data & 0x08) || ((data & 0x7) < 2) || (data < 4)) {
		data2 = (FUNC0(ast, 0x1E6E0064) & 0xfff3ffff) + 4;
		if ((data2 & 0xff) > param->madj_max) {
			break;
		}
		FUNC1(ast, 0x1E6E0064, data2);
		if (data2 & 0x00100000) {
			data2 = ((data2 & 0xff) >> 3) + 3;
		} else {
			data2 = ((data2 & 0xff) >> 2) + 5;
		}
		data = FUNC0(ast, 0x1E6E0068) & 0xffff00ff;
		data2 += data & 0xff;
		data = data | (data2 << 8);
		FUNC1(ast, 0x1E6E0068, data);
		FUNC3(10);
		FUNC1(ast, 0x1E6E0064, FUNC0(ast, 0x1E6E0064) | 0xC0000);
		FUNC3(10);
		data = FUNC0(ast, 0x1E6E0018) & 0xfffff1ff;
		FUNC1(ast, 0x1E6E0018, data);
		data = data | 0x200;
		FUNC1(ast, 0x1E6E0018, data);
		do {
			data = FUNC0(ast, 0x1E6E001C);
		} while (!(data & 0x08000000));

		data = FUNC0(ast, 0x1E6E001C);
		data = (data >> 8) & 0xff;
	}
	FUNC1(ast, 0x1E720058, FUNC0(ast, 0x1E6E0008) & 0xffff);
	data = FUNC0(ast, 0x1E6E0018) | 0xC00;
	FUNC1(ast, 0x1E6E0018, data);

	FUNC1(ast, 0x1E6E0034, 0x00000001);
	FUNC1(ast, 0x1E6E000C, 0x00000000);
	FUNC3(50);
	/* Mode Register Setting */
	FUNC1(ast, 0x1E6E002C, param->reg_MRS | 0x100);
	FUNC1(ast, 0x1E6E0030, param->reg_EMRS);
	FUNC1(ast, 0x1E6E0028, 0x00000005);
	FUNC1(ast, 0x1E6E0028, 0x00000007);
	FUNC1(ast, 0x1E6E0028, 0x00000003);
	FUNC1(ast, 0x1E6E0028, 0x00000001);

	FUNC1(ast, 0x1E6E000C, 0x00005C08);
	FUNC1(ast, 0x1E6E002C, param->reg_MRS);
	FUNC1(ast, 0x1E6E0028, 0x00000001);
	FUNC1(ast, 0x1E6E0030, param->reg_EMRS | 0x380);
	FUNC1(ast, 0x1E6E0028, 0x00000003);
	FUNC1(ast, 0x1E6E0030, param->reg_EMRS);
	FUNC1(ast, 0x1E6E0028, 0x00000003);

	FUNC1(ast, 0x1E6E000C, 0x7FFF5C01);
	data = 0;
	if (param->wodt) {
		data = 0x500;
	}
	if (param->rodt) {
		data = data | 0x3000 | ((param->reg_AC2 & 0x60000) >> 3);
	}
	FUNC1(ast, 0x1E6E0034, data | 0x3);
	FUNC1(ast, 0x1E6E0120, param->reg_FREQ);

	/* Calibrate the DQSI delay */
	if ((FUNC2(ast, param) == false) && (retry++ < 10))
		goto ddr2_init_start;

	/* ECC Memory Initialization */
#ifdef ECC
	ast_moutdwm(ast, 0x1E6E007C, 0x00000000);
	ast_moutdwm(ast, 0x1E6E0070, 0x221);
	do {
		data = ast_mindwm(ast, 0x1E6E0070);
	} while (!(data & 0x00001000));
	ast_moutdwm(ast, 0x1E6E0070, 0x00000000);
	ast_moutdwm(ast, 0x1E6E0050, 0x80000000);
	ast_moutdwm(ast, 0x1E6E0050, 0x00000000);
#endif

}