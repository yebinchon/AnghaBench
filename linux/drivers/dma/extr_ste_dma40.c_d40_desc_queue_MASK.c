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
struct d40_desc {int is_in_client_list; int /*<<< orphan*/  node; } ;
struct d40_chan {int /*<<< orphan*/  pending_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d40_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct d40_chan *d40c, struct d40_desc *desc)
{
	FUNC0(desc);
	desc->is_in_client_list = false;
	FUNC1(&desc->node, &d40c->pending_queue);
}