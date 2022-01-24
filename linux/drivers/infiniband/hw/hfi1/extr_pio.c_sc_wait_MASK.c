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
struct send_context {int dummy; } ;
struct hfi1_devdata {int num_send_contexts; TYPE_1__* send_contexts; } ;
struct TYPE_2__ {struct send_context* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct send_context*,int /*<<< orphan*/ ) ; 

void FUNC1(struct hfi1_devdata *dd)
{
	int i;

	for (i = 0; i < dd->num_send_contexts; i++) {
		struct send_context *sc = dd->send_contexts[i].sc;

		if (!sc)
			continue;
		FUNC0(sc, 0);
	}
}