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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static uint64_t FUNC1(uint64_t uword)
{
	uint64_t bit0_mask = 0xff800007fffULL, bit1_mask = 0x1f801ff801fULL,
		bit2_mask = 0xe387e0781e1ULL, bit3_mask = 0x7cb8e388e22ULL,
		bit4_mask = 0xaf5b2c93244ULL, bit5_mask = 0xf56d5525488ULL,
		bit6_mask = 0xdaf69a46910ULL;

	/* clear the ecc bits */
	uword &= ~(0x7fULL << 0x2C);
	uword |= FUNC0(bit0_mask & uword) << 0x2C;
	uword |= FUNC0(bit1_mask & uword) << 0x2D;
	uword |= FUNC0(bit2_mask & uword) << 0x2E;
	uword |= FUNC0(bit3_mask & uword) << 0x2F;
	uword |= FUNC0(bit4_mask & uword) << 0x30;
	uword |= FUNC0(bit5_mask & uword) << 0x31;
	uword |= FUNC0(bit6_mask & uword) << 0x32;
	return uword;
}