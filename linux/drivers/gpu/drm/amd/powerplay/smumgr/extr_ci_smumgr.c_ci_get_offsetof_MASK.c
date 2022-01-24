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
 int const AverageGraphicsA ; 
#define  AverageGraphicsActivity 141 
 int const AverageMemoryA ; 
#define  AverageMemoryActivity 140 
#define  DRAM_LOG_ADDR_H 139 
#define  DRAM_LOG_ADDR_L 138 
#define  DRAM_LOG_BUFF_SIZE 137 
#define  DRAM_LOG_PHY_ADDR_H 136 
#define  DRAM_LOG_PHY_ADDR_L 135 
#define  HandshakeDisables 134 
 int const LowSclkInterruptT ; 
#define  LowSclkInterruptThreshold 133 
#define  PreVBlankGap 132 
 int /*<<< orphan*/  SMU7_Discrete_DpmTable ; 
 int /*<<< orphan*/  SMU7_SoftRegisters ; 
#define  SMU_Discrete_DpmTable 131 
#define  SMU_SoftRegisters 130 
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
			return FUNC0(SMU7_SoftRegisters, HandshakeDisables);
		case VoltageChangeTimeout:
			return FUNC0(SMU7_SoftRegisters, VoltageChangeTimeout);
		case AverageGraphicsActivity:
			return FUNC0(SMU7_SoftRegisters, AverageGraphicsA);
		case AverageMemoryActivity:
			return FUNC0(SMU7_SoftRegisters, AverageMemoryA);
		case PreVBlankGap:
			return FUNC0(SMU7_SoftRegisters, PreVBlankGap);
		case VBlankTimeout:
			return FUNC0(SMU7_SoftRegisters, VBlankTimeout);
		case DRAM_LOG_ADDR_H:
			return FUNC0(SMU7_SoftRegisters, DRAM_LOG_ADDR_H);
		case DRAM_LOG_ADDR_L:
			return FUNC0(SMU7_SoftRegisters, DRAM_LOG_ADDR_L);
		case DRAM_LOG_PHY_ADDR_H:
			return FUNC0(SMU7_SoftRegisters, DRAM_LOG_PHY_ADDR_H);
		case DRAM_LOG_PHY_ADDR_L:
			return FUNC0(SMU7_SoftRegisters, DRAM_LOG_PHY_ADDR_L);
		case DRAM_LOG_BUFF_SIZE:
			return FUNC0(SMU7_SoftRegisters, DRAM_LOG_BUFF_SIZE);
		}
		break;
	case SMU_Discrete_DpmTable:
		switch (member) {
		case LowSclkInterruptThreshold:
			return FUNC0(SMU7_Discrete_DpmTable, LowSclkInterruptT);
		}
		break;
	}
	FUNC1("can't get the offset of type %x member %x\n", type, member);
	return 0;
}