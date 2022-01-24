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
typedef  int u8 ;
struct ktd2692_context {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ktd2692_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct ktd2692_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ktd2692_context*) ; 

__attribute__((used)) static void FUNC4(struct ktd2692_context *led, u8 value)
{
	int i;

	FUNC3(led);
	for (i = 7; i >= 0; i--)
		FUNC2(led, value & FUNC0(i));
	FUNC1(led);
}