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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static u8 *FUNC3(const u8 *ptr, size_t nbytes, size_t dstlen)
{
	u8 *dst;

	FUNC0(&ptr, &nbytes);
	if (!nbytes)
		return NULL;

	dst = FUNC1(dstlen, GFP_DMA | GFP_KERNEL);
	if (!dst)
		return NULL;

	FUNC2(dst + (dstlen - nbytes), ptr, nbytes);

	return dst;
}