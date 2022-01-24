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
typedef  int u32 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GENERAL_CONFIG ; 
 int /*<<< orphan*/  LINK_DOWN_REASON ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC1(struct hfi1_devdata *dd, u8 *ldr)
{
	u32 frame;

	FUNC0(dd, LINK_DOWN_REASON, GENERAL_CONFIG, &frame);
	*ldr = (frame & 0xff);
}