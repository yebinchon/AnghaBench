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
typedef  unsigned int u32 ;

/* Variables and functions */
 unsigned int ADF4371_MAX_MODULUS2 ; 
 unsigned long long ADF4371_MODULUS1 ; 
 void* FUNC0 (unsigned long long,unsigned long long) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned long long vco,
				       unsigned long long pfd,
				       unsigned int *integer,
				       unsigned int *fract1,
				       unsigned int *fract2,
				       unsigned int *mod2)
{
	unsigned long long tmp;
	u32 gcd_div;

	tmp = FUNC0(vco, pfd);
	tmp = tmp * ADF4371_MODULUS1;
	*fract2 = FUNC0(tmp, pfd);

	*integer = vco;
	*fract1 = tmp;

	*mod2 = pfd;

	while (*mod2 > ADF4371_MAX_MODULUS2) {
		*mod2 >>= 1;
		*fract2 >>= 1;
	}

	gcd_div = FUNC1(*fract2, *mod2);
	*mod2 /= gcd_div;
	*fract2 /= gcd_div;
}