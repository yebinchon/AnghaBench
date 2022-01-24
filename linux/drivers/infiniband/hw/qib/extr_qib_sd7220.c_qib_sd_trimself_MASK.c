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
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 unsigned int CMUCTRL5 ; 
 unsigned int EPB_IB_QUAD0_CS_SHF ; 
 int /*<<< orphan*/  IB_7220_SERDES ; 
 int FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC1(struct qib_devdata *dd, int val)
{
	int loc = CMUCTRL5 | (1U << EPB_IB_QUAD0_CS_SHF);

	return FUNC0(dd, IB_7220_SERDES, loc, val, 0xFF);
}