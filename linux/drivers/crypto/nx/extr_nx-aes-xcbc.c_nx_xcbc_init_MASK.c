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
struct xcbc_state {int dummy; } ;
struct shash_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xcbc_state*,int /*<<< orphan*/ ,int) ; 
 struct xcbc_state* FUNC1 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc)
{
	struct xcbc_state *sctx = FUNC1(desc);

	FUNC0(sctx, 0, sizeof *sctx);

	return 0;
}