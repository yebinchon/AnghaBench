#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ppl_conf {int /*<<< orphan*/  io_kc; int /*<<< orphan*/  io_pool; int /*<<< orphan*/  flush_bs; int /*<<< orphan*/  bs; struct ppl_conf* child_logs; TYPE_1__* mddev; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_HAS_MULTIPLE_PPLS ; 
 int /*<<< orphan*/  MD_HAS_PPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ppl_conf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ppl_conf *ppl_conf)
{
	FUNC1(MD_HAS_PPL, &ppl_conf->mddev->flags);
	FUNC1(MD_HAS_MULTIPLE_PPLS, &ppl_conf->mddev->flags);

	FUNC2(ppl_conf->child_logs);

	FUNC0(&ppl_conf->bs);
	FUNC0(&ppl_conf->flush_bs);
	FUNC4(&ppl_conf->io_pool);
	FUNC3(ppl_conf->io_kc);

	FUNC2(ppl_conf);
}