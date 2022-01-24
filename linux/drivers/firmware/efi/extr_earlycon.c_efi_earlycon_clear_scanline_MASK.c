#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u16 ;
struct TYPE_2__ {unsigned int lfb_linelength; } ;

/* Variables and functions */
 unsigned long* FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__ screen_info ; 

__attribute__((used)) static void FUNC3(unsigned int y)
{
	unsigned long *dst;
	u16 len;

	len = screen_info.lfb_linelength;
	dst = FUNC0(y*len, len);
	if (!dst)
		return;

	FUNC2(dst, 0, len);
	FUNC1(dst, len);
}