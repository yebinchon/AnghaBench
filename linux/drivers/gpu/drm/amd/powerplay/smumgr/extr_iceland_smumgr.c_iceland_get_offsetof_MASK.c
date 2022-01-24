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
typedef  int uint32_t ;

/* Variables and functions */
#define  AverageGraphicsActivity 142 
#define  AverageMemoryActivity 141 
#define  DRAM_LOG_ADDR_H 140 
#define  DRAM_LOG_ADDR_L 139 
#define  DRAM_LOG_BUFF_SIZE 138 
#define  DRAM_LOG_PHY_ADDR_H 137 
#define  DRAM_LOG_PHY_ADDR_L 136 
#define  HandshakeDisables 135 
#define  LowSclkInterruptThreshold 134 
#define  PreVBlankGap 133 
 int /*<<< orphan*/  SMU71_Discrete_DpmTable ; 
 int /*<<< orphan*/  SMU71_SoftRegisters ; 
#define  SMU_Discrete_DpmTable 132 
#define  SMU_SoftRegisters 131 
#define  UcodeLoadStatus 130 
#define  VBlankTimeout 129 
#define  VoltageChangeTimeout 128 
 int FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static uint32_t FUNC2(uint32_t type, uint32_t member)
{
	switch (type) {
	case SMU_SoftRegisters:
		switch (member) {
		case HandshakeDisables:
			return FUNC0(SMU71_SoftRegisters, HandshakeDisables);
		case VoltageChangeTimeout:
			return FUNC0(SMU71_SoftRegisters, VoltageChangeTimeout);
		case AverageGraphicsActivity:
			return FUNC0(SMU71_SoftRegisters, AverageGraphicsActivity);
		case AverageMemoryActivity:
			return FUNC0(SMU71_SoftRegisters, AverageMemoryActivity);
		case PreVBlankGap:
			return FUNC0(SMU71_SoftRegisters, PreVBlankGap);
		case VBlankTimeout:
			return FUNC0(SMU71_SoftRegisters, VBlankTimeout);
		case UcodeLoadStatus:
			return FUNC0(SMU71_SoftRegisters, UcodeLoadStatus);
		case DRAM_LOG_ADDR_H:
			return FUNC0(SMU71_SoftRegisters, DRAM_LOG_ADDR_H);
		case DRAM_LOG_ADDR_L:
			return FUNC0(SMU71_SoftRegisters, DRAM_LOG_ADDR_L);
		case DRAM_LOG_PHY_ADDR_H:
			return FUNC0(SMU71_SoftRegisters, DRAM_LOG_PHY_ADDR_H);
		case DRAM_LOG_PHY_ADDR_L:
			return FUNC0(SMU71_SoftRegisters, DRAM_LOG_PHY_ADDR_L);
		case DRAM_LOG_BUFF_SIZE:
			return FUNC0(SMU71_SoftRegisters, DRAM_LOG_BUFF_SIZE);
		}
		break;
	case SMU_Discrete_DpmTable:
		switch (member) {
		case LowSclkInterruptThreshold:
			return FUNC0(SMU71_Discrete_DpmTable, LowSclkInterruptThreshold);
		}
		break;
	}
	FUNC1("can't get the offset of type %x member %x\n", type, member);
	return 0;
}