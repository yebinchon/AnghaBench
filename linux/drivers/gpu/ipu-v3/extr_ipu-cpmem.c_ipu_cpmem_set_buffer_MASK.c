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
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPU_FIELD_EBA0 ; 
 int /*<<< orphan*/  IPU_FIELD_EBA1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipuv3_channel*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct ipuv3_channel *ch, int bufnum, dma_addr_t buf)
{
	FUNC0(buf & 0x7);

	if (bufnum)
		FUNC1(ch, IPU_FIELD_EBA1, buf >> 3);
	else
		FUNC1(ch, IPU_FIELD_EBA0, buf >> 3);
}