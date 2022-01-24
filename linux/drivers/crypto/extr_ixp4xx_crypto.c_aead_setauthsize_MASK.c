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
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct crypto_aead*,unsigned int) ; 
 int FUNC1 (struct crypto_aead*) ; 

__attribute__((used)) static int FUNC2(struct crypto_aead *tfm, unsigned int authsize)
{
	int max = FUNC1(tfm) >> 2;

	if ((authsize>>2) < 1 || (authsize>>2) > max || (authsize & 3))
		return -EINVAL;
	return FUNC0(tfm, authsize);
}