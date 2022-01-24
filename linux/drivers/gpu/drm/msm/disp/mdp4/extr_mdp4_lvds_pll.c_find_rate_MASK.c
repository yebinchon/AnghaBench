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
struct pll_rate {unsigned long rate; } ;

/* Variables and functions */
 int FUNC0 (struct pll_rate const*) ; 
 struct pll_rate const* freqtbl ; 

__attribute__((used)) static const struct pll_rate *FUNC1(unsigned long rate)
{
	int i;
	for (i = 1; i < FUNC0(freqtbl); i++)
		if (rate > freqtbl[i].rate)
			return &freqtbl[i-1];
	return &freqtbl[i-1];
}