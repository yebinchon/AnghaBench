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
struct cirrus_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cirrus_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cirrus_device*,int,int) ; 

__attribute__((used)) static void FUNC2(struct cirrus_device *cirrus, u32 offset)
{
	u32 addr;
	u8 tmp;

	addr = offset >> 2;
	FUNC1(cirrus, 0x0c, (u8)((addr >> 8) & 0xff));
	FUNC1(cirrus, 0x0d, (u8)(addr & 0xff));

	tmp = FUNC0(cirrus, 0x1b);
	tmp &= 0xf2;
	tmp |= (addr >> 16) & 0x01;
	tmp |= (addr >> 15) & 0x0c;
	FUNC1(cirrus, 0x1b, tmp);

	tmp = FUNC0(cirrus, 0x1d);
	tmp &= 0x7f;
	tmp |= (addr >> 12) & 0x80;
	FUNC1(cirrus, 0x1d, tmp);
}