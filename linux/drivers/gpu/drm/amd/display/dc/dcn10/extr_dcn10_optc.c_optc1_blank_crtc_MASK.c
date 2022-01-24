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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_BLANK_CONTROL ; 
 int /*<<< orphan*/  OTG_BLANK_DATA_EN ; 
 int /*<<< orphan*/  OTG_BLANK_DE_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timing_generator*,int) ; 

__attribute__((used)) static void FUNC3(struct timing_generator *optc)
{
	struct optc *optc1 = FUNC0(optc);

	FUNC1(OTG_BLANK_CONTROL,
			OTG_BLANK_DATA_EN, 1,
			OTG_BLANK_DE_MODE, 0);

	FUNC2(optc, false);
}