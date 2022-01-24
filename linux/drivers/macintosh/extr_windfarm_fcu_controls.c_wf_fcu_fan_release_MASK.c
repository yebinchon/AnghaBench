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
struct wf_fcu_fan {TYPE_1__* fcu_priv; } ;
struct wf_control {struct wf_fcu_fan* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wf_fcu_fan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wf_fcu_release ; 

__attribute__((used)) static void FUNC2(struct wf_control *ct)
{
	struct wf_fcu_fan *fan = ct->priv;

	FUNC1(&fan->fcu_priv->ref, wf_fcu_release);
	FUNC0(fan);
}