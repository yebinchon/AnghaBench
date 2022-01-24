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
struct ipuv3_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_FIELD_RDRW ; 
 int /*<<< orphan*/  FUNC0 (struct ipuv3_channel*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct ipuv3_channel *ch)
{
	FUNC0(ch, IPU_FIELD_RDRW, 1);
}