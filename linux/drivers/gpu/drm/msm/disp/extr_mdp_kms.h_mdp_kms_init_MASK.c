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
struct mdp_kms_funcs {int /*<<< orphan*/  base; } ;
struct mdp_kms {int /*<<< orphan*/  base; int /*<<< orphan*/  irq_list; struct mdp_kms_funcs const* funcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct mdp_kms *mdp_kms,
		const struct mdp_kms_funcs *funcs)
{
	mdp_kms->funcs = funcs;
	FUNC0(&mdp_kms->irq_list);
	FUNC1(&mdp_kms->base, &funcs->base);
}