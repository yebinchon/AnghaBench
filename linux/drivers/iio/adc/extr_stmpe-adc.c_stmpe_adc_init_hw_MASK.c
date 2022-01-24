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
struct stmpe_adc {struct stmpe* stmpe; } ;
struct stmpe {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMPE_BLOCK_ADC ; 
 scalar_t__ STMPE_REG_TEMP_TH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct stmpe*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmpe*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stmpe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stmpe*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct stmpe_adc *adc)
{
	int ret;
	struct stmpe *stmpe = adc->stmpe;

	ret = FUNC3(stmpe, STMPE_BLOCK_ADC);
	if (ret) {
		FUNC0(stmpe->dev, "Could not enable clock for ADC\n");
		return ret;
	}

	ret = FUNC1(stmpe);
	if (ret) {
		FUNC2(stmpe, STMPE_BLOCK_ADC);
		return ret;
	}

	/* use temp irq for each conversion completion */
	FUNC4(stmpe, STMPE_REG_TEMP_TH, 0);
	FUNC4(stmpe, STMPE_REG_TEMP_TH + 1, 0);

	return 0;
}