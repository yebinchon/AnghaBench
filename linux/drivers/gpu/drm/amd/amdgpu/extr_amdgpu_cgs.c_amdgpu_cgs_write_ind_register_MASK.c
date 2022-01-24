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
typedef  int /*<<< orphan*/  uint32_t ;
struct cgs_device {int dummy; } ;
typedef  enum cgs_ind_reg { ____Placeholder_cgs_ind_reg } cgs_ind_reg ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_FUNC_ADEV ; 
#define  CGS_IND_REG_GC_CAC 135 
#define  CGS_IND_REG_SE_CAC 134 
#define  CGS_IND_REG__AUDIO_ENDPT 133 
#define  CGS_IND_REG__DIDT 132 
#define  CGS_IND_REG__MMIO 131 
#define  CGS_IND_REG__PCIE 130 
#define  CGS_IND_REG__SMC 129 
#define  CGS_IND_REG__UVD_CTX 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 void FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 void FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 void FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 void FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 void FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 void FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct cgs_device *cgs_device,
					  enum cgs_ind_reg space,
					  unsigned index, uint32_t value)
{
	CGS_FUNC_ADEV;
	switch (space) {
	case CGS_IND_REG__MMIO:
		return FUNC4(index, value);
	case CGS_IND_REG__PCIE:
		return FUNC5(index, value);
	case CGS_IND_REG__SMC:
		return FUNC7(index, value);
	case CGS_IND_REG__UVD_CTX:
		return FUNC8(index, value);
	case CGS_IND_REG__DIDT:
		return FUNC2(index, value);
	case CGS_IND_REG_GC_CAC:
		return FUNC3(index, value);
	case CGS_IND_REG_SE_CAC:
		return FUNC6(index, value);
	case CGS_IND_REG__AUDIO_ENDPT:
		FUNC0("audio endpt register access not implemented.\n");
		return;
	}
	FUNC1(1, "Invalid indirect register space");
}