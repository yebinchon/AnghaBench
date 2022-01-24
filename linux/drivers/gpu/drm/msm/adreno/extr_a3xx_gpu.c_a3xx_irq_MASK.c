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
struct msm_gpu {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_INT_0_STATUS ; 
 int /*<<< orphan*/  REG_A3XX_RBBM_INT_CLEAR_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct msm_gpu *gpu)
{
	uint32_t status;

	status = FUNC1(gpu, REG_A3XX_RBBM_INT_0_STATUS);
	FUNC0("%s: %08x", gpu->name, status);

	// TODO

	FUNC2(gpu, REG_A3XX_RBBM_INT_CLEAR_CMD, status);

	FUNC3(gpu);

	return IRQ_HANDLED;
}