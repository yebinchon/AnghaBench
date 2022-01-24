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
struct msm_gpu {int dummy; } ;
struct TYPE_2__ {int patchid; } ;
struct adreno_gpu {TYPE_1__ rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL2_UCHE ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL3_UCHE ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL4_UCHE ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL_COM_DCOM ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL_HLSQ ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL_TSE_RAS_RBBM ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_CTL_UCHE ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_DELAY_COM_DCOM ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_DELAY_GPC ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_DELAY_HLSQ ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_DELAY_TSE_RAS_RBBM ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_DELAY_UCHE ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_HYST_COM_DCOM ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_HYST_GPC ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_HYST_HLSQ ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_HYST_TSE_RAS_RBBM ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_HYST_UCHE ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_CLOCK_MODE_GPC ; 
 scalar_t__ FUNC13 (struct adreno_gpu*) ; 
 scalar_t__ FUNC14 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC15 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct adreno_gpu* FUNC16 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC17(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC16(gpu);
	unsigned int i;
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC6(i), 0x02222202);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC2(i), 0x00002222);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC12(i), 0x0E739CE7);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC9(i), 0x00111111);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC5(i), 0x22222222);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC1(i), 0x00222222);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC11(i), 0x00000104);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC8(i), 0x00000081);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL_UCHE, 0x22222222);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL2_UCHE, 0x02222222);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL3_UCHE, 0x00000000);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL4_UCHE, 0x00000000);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_HYST_UCHE, 0x00004444);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_DELAY_UCHE, 0x00001112);
	for (i = 0; i < 4; i++)
		FUNC15(gpu, FUNC4(i), 0x22222222);

	/* Disable L1 clocking in A420 due to CCU issues with it */
	for (i = 0; i < 4; i++) {
		if (FUNC13(adreno_gpu)) {
			FUNC15(gpu, FUNC0(i),
					0x00002020);
		} else {
			FUNC15(gpu, FUNC0(i),
					0x00022020);
		}
	}

	for (i = 0; i < 4; i++) {
		FUNC15(gpu, FUNC3(i),
				0x00000922);
	}

	for (i = 0; i < 4; i++) {
		FUNC15(gpu, FUNC10(i),
				0x00000000);
	}

	for (i = 0; i < 4; i++) {
		FUNC15(gpu, FUNC7(i),
				0x00000001);
	}

	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_MODE_GPC, 0x02222222);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_HYST_GPC, 0x04100104);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_DELAY_GPC, 0x00022222);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL_COM_DCOM, 0x00000022);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_HYST_COM_DCOM, 0x0000010F);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_DELAY_COM_DCOM, 0x00000022);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL_TSE_RAS_RBBM, 0x00222222);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_HYST_TSE_RAS_RBBM, 0x00004104);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_DELAY_TSE_RAS_RBBM, 0x00000222);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL_HLSQ , 0x00000000);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_HYST_HLSQ, 0x00000000);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_DELAY_HLSQ, 0x00220000);
	/* Early A430's have a timing issue with SP/TP power collapse;
	   disabling HW clock gating prevents it. */
	if (FUNC14(adreno_gpu) && adreno_gpu->rev.patchid < 2)
		FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL, 0);
	else
		FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL, 0xAAAAAAAA);
	FUNC15(gpu, REG_A4XX_RBBM_CLOCK_CTL2, 0);
}