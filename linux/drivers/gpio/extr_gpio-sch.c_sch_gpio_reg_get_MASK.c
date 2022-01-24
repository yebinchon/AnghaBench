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
struct sch_gpio {scalar_t__ iobase; } ;

/* Variables and functions */
 int FUNC0 (unsigned short) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned short FUNC2 (struct sch_gpio*,unsigned int) ; 
 unsigned short FUNC3 (struct sch_gpio*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct sch_gpio *sch, unsigned gpio, unsigned reg)
{
	unsigned short offset, bit;
	u8 reg_val;

	offset = FUNC3(sch, gpio, reg);
	bit = FUNC2(sch, gpio);

	reg_val = !!(FUNC1(sch->iobase + offset) & FUNC0(bit));

	return reg_val;
}