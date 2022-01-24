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
struct tmc_drvdata {int dummy; } ;
struct perf_event {int cpu; } ;
struct etr_perf_buffer {struct etr_buf* etr_buf; struct tmc_drvdata* drvdata; } ;
struct etr_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct etr_perf_buffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct etr_buf*) ; 
 int NUMA_NO_NODE ; 
 int FUNC2 (int) ; 
 struct etr_buf* FUNC3 (struct tmc_drvdata*,struct perf_event*,int,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct etr_perf_buffer*) ; 
 struct etr_perf_buffer* FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct etr_perf_buffer *
FUNC6(struct tmc_drvdata *drvdata, struct perf_event *event,
		       int nr_pages, void **pages, bool snapshot)
{
	int node;
	struct etr_buf *etr_buf;
	struct etr_perf_buffer *etr_perf;

	node = (event->cpu == -1) ? NUMA_NO_NODE : FUNC2(event->cpu);

	etr_perf = FUNC5(sizeof(*etr_perf), GFP_KERNEL, node);
	if (!etr_perf)
		return FUNC0(-ENOMEM);

	etr_buf = FUNC3(drvdata, event, nr_pages, pages, snapshot);
	if (!FUNC1(etr_buf))
		goto done;

	FUNC4(etr_perf);
	return FUNC0(-ENOMEM);

done:
	/*
	 * Keep a reference to the ETR this buffer has been allocated for
	 * in order to have access to the IDR in tmc_free_etr_buffer().
	 */
	etr_perf->drvdata = drvdata;
	etr_perf->etr_buf = etr_buf;

	return etr_perf;
}