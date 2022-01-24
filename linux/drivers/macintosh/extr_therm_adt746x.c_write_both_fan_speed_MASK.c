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
struct thermostat {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ADT7460 ; 
 int /*<<< orphan*/  FUNC0 (struct thermostat*,int,int) ; 

__attribute__((used)) static void FUNC1(struct thermostat *th, int speed)
{
	FUNC0(th, speed, 0);
	if (th->type == ADT7460)
		FUNC0(th, speed, 1);
}