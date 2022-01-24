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
struct etr_buf {int dummy; } ;

/* Variables and functions */
 struct etr_buf* FUNC0 (struct tmc_drvdata*,struct perf_event*,int,void**,int) ; 
 struct etr_buf* FUNC1 (struct tmc_drvdata*,struct perf_event*,int,void**,int) ; 

__attribute__((used)) static struct etr_buf *
FUNC2(struct tmc_drvdata *drvdata, struct perf_event *event,
		 int nr_pages, void **pages, bool snapshot)
{
	if (event->cpu == -1)
		return FUNC1(drvdata, event, nr_pages,
						   pages, snapshot);

	return FUNC0(drvdata, event, nr_pages,
					 pages, snapshot);
}