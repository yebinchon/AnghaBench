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
typedef  int uint16_t ;
struct adis16136 {int /*<<< orphan*/  adis; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIS16136_REG_SMPL_PRD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct adis16136 *adis16136, unsigned int *freq)
{
	uint16_t t;
	int ret;

	ret = FUNC0(&adis16136->adis, ADIS16136_REG_SMPL_PRD, &t);
	if (ret < 0)
		return ret;

	*freq = 32768 / (t + 1);

	return 0;
}