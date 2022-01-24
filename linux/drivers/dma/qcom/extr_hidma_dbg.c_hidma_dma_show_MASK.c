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
struct seq_file {struct hidma_dev* private; } ;
struct hidma_dev {TYPE_1__* evca_resource; int /*<<< orphan*/  dev_evca; TYPE_1__* trca_resource; int /*<<< orphan*/  dev_trca; int /*<<< orphan*/ * nr_descriptors; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *unused)
{
	struct hidma_dev *dmadev = s->private;
	resource_size_t sz;

	FUNC1(s, "nr_descriptors=%d\n", dmadev->nr_descriptors);
	FUNC1(s, "dev_trca=%p\n", &dmadev->dev_trca);
	FUNC1(s, "dev_trca_phys=%pa\n", &dmadev->trca_resource->start);
	sz = FUNC0(dmadev->trca_resource);
	FUNC1(s, "dev_trca_size=%pa\n", &sz);
	FUNC1(s, "dev_evca=%p\n", &dmadev->dev_evca);
	FUNC1(s, "dev_evca_phys=%pa\n", &dmadev->evca_resource->start);
	sz = FUNC0(dmadev->evca_resource);
	FUNC1(s, "dev_evca_size=%pa\n", &sz);
	return 0;
}