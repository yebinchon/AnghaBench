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
struct ktd2692_context {int /*<<< orphan*/  ctrl_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  KTD2692_HIGH ; 
 int /*<<< orphan*/  KTD2692_LOW ; 
 int /*<<< orphan*/  KTD2692_TIME_HIGH_END_OF_DATA_US ; 
 int /*<<< orphan*/  KTD2692_TIME_LOW_END_OF_DATA_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ktd2692_context *led)
{
	FUNC0(led->ctrl_gpio, KTD2692_LOW);
	FUNC1(KTD2692_TIME_LOW_END_OF_DATA_US);
	FUNC0(led->ctrl_gpio, KTD2692_HIGH);
	FUNC1(KTD2692_TIME_HIGH_END_OF_DATA_US);
}