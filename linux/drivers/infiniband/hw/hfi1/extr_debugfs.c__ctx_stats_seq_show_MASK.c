#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct seq_file {scalar_t__ private; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {TYPE_1__* opstats; } ;
typedef  size_t loff_t ;
struct TYPE_4__ {scalar_t__ n_packets; } ;
struct TYPE_3__ {TYPE_2__* stats; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int SEQ_SKIP ; 
 void* SEQ_START_TOKEN ; 
 struct hfi1_devdata* FUNC1 (struct hfi1_ibdev*) ; 
 struct hfi1_ctxtdata* FUNC2 (struct hfi1_devdata*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *v)
{
	loff_t *spos;
	loff_t i, j;
	u64 n_packets = 0;
	struct hfi1_ibdev *ibd = (struct hfi1_ibdev *)s->private;
	struct hfi1_devdata *dd = FUNC1(ibd);
	struct hfi1_ctxtdata *rcd;

	if (v == SEQ_START_TOKEN) {
		FUNC5(s, "Ctx:npkts\n");
		return 0;
	}

	spos = v;
	i = *spos;

	rcd = FUNC2(dd, i);
	if (!rcd)
		return SEQ_SKIP;

	for (j = 0; j < FUNC0(rcd->opstats->stats); j++)
		n_packets += rcd->opstats->stats[j].n_packets;

	FUNC3(rcd);

	if (!n_packets)
		return SEQ_SKIP;

	FUNC4(s, "  %llu:%llu\n", i, n_packets);
	return 0;
}