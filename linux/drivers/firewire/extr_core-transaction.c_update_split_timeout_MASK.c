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
struct fw_card {int split_timeout_hi; int split_timeout_lo; unsigned int split_timeout_cycles; int /*<<< orphan*/  split_timeout_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 unsigned int HZ ; 
 unsigned int FUNC1 (unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct fw_card *card)
{
	unsigned int cycles;

	cycles = card->split_timeout_hi * 8000 + (card->split_timeout_lo >> 19);

	/* minimum per IEEE 1394, maximum which doesn't overflow OHCI */
	cycles = FUNC1(cycles, 800u, 3u * 8000u);

	card->split_timeout_cycles = cycles;
	card->split_timeout_jiffies = FUNC0(cycles * HZ, 8000);
}