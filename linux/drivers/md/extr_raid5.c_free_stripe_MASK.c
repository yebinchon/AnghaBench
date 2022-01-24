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
struct stripe_head {scalar_t__ ppl_page; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,struct stripe_head*) ; 

__attribute__((used)) static void FUNC2(struct kmem_cache *sc, struct stripe_head *sh)
{
	if (sh->ppl_page)
		FUNC0(sh->ppl_page);
	FUNC1(sc, sh);
}