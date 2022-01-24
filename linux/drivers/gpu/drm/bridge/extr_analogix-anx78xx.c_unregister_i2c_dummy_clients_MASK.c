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
struct anx78xx {int /*<<< orphan*/ * i2c_dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct anx78xx *anx78xx)
{
	unsigned int i;

	for (i = 0; i < FUNC0(anx78xx->i2c_dummy); i++)
		FUNC1(anx78xx->i2c_dummy[i]);
}