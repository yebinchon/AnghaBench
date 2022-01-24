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
struct mddev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* leave ) (struct mddev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  md_cluster_mod ; 
 TYPE_1__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 

void FUNC2(struct mddev *mddev)
{
	if (!md_cluster_ops)
		return;
	md_cluster_ops->leave(mddev);
	FUNC0(md_cluster_mod);
}