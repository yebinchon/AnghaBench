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

/* Variables and functions */
 long FUNC0 (int,int) ; 
 long FUNC1 (long,int,int) ; 

__attribute__((used)) static inline int FUNC2(int temp, long hyst, int ix, int reg)
{
	hyst = FUNC1(hyst, temp - 15000, temp);
	hyst = FUNC0(temp - hyst, 1000);

	return (ix == 1) ? (reg & 0xf0) | hyst : (reg & 0x0f) | (hyst << 4);
}