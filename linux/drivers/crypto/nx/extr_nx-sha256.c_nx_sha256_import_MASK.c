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
struct shash_desc {int dummy; } ;
struct sha256_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sha256_state*,void const*,int) ; 
 struct sha256_state* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc, const void *in)
{
	struct sha256_state *sctx = FUNC1(desc);

	FUNC0(sctx, in, sizeof(*sctx));

	return 0;
}