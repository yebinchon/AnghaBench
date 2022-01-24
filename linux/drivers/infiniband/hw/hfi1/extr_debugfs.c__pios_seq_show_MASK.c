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
struct seq_file {scalar_t__ private; } ;
struct send_context_info {scalar_t__ type; scalar_t__ sc; scalar_t__ allocated; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {int /*<<< orphan*/  sc_lock; struct send_context_info* send_contexts; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 scalar_t__ SC_USER ; 
 struct hfi1_devdata* FUNC0 (struct hfi1_ibdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,size_t,struct send_context_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *v)
{
	struct hfi1_ibdev *ibd = (struct hfi1_ibdev *)s->private;
	struct hfi1_devdata *dd = FUNC0(ibd);
	struct send_context_info *sci;
	loff_t *spos = v;
	loff_t i = *spos;
	unsigned long flags;

	FUNC2(&dd->sc_lock, flags);
	sci = &dd->send_contexts[i];
	if (sci && sci->type != SC_USER && sci->allocated && sci->sc)
		FUNC1(s, i, sci);
	FUNC3(&dd->sc_lock, flags);
	return 0;
}