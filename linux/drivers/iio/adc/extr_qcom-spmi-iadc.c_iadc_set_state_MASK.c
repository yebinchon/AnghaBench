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
struct iadc_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IADC_EN_CTL1 ; 
 int /*<<< orphan*/  IADC_EN_CTL1_SET ; 
 int FUNC0 (struct iadc_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct iadc_chip *iadc, bool state)
{
	return FUNC0(iadc, IADC_EN_CTL1, state ? IADC_EN_CTL1_SET : 0);
}