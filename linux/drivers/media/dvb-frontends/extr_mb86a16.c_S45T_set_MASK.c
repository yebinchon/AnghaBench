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
struct mb86a16_state {int dummy; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  MB86A16_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (struct mb86a16_state*,int,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC2(struct mb86a16_state *state, unsigned char S4T, unsigned char S5T)
{
	if (FUNC1(state, 0x35, 0x00 | (S5T << 4) | S4T) < 0) {
		FUNC0(verbose, MB86A16_ERROR, 1, "I2C transfer error");
		return -EREMOTEIO;
	}

	return 0;
}