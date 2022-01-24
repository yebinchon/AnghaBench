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
struct thermostat {int /*<<< orphan*/ * temps; } ;

/* Variables and functions */
 int /*<<< orphan*/ * TEMP_REG ; 
 int /*<<< orphan*/  FUNC0 (struct thermostat*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct thermostat *th)
{
	int i = 0;

	for (i = 0; i < 3; i++)
		th->temps[i]  = FUNC0(th, TEMP_REG[i]);
}