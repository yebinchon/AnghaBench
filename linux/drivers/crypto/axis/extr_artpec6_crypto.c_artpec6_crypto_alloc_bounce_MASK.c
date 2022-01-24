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
struct artpec6_crypto_bounce_buffer {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ARTPEC_CACHE_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 struct artpec6_crypto_bounce_buffer* FUNC1 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct artpec6_crypto_bounce_buffer *
FUNC2(gfp_t flags)
{
	void *base;
	size_t alloc_size = sizeof(struct artpec6_crypto_bounce_buffer) +
			    2 * ARTPEC_CACHE_LINE_MAX;
	struct artpec6_crypto_bounce_buffer *bbuf = FUNC1(alloc_size, flags);

	if (!bbuf)
		return NULL;

	base = bbuf + 1;
	bbuf->buf = FUNC0(base, ARTPEC_CACHE_LINE_MAX);
	return bbuf;
}