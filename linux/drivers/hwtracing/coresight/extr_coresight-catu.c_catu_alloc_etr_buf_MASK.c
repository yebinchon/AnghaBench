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
struct tmc_sg_table {int /*<<< orphan*/  table_daddr; } ;
struct tmc_drvdata {int dummy; } ;
struct etr_buf {int /*<<< orphan*/  hwaddr; struct catu_etr_buf* private; int /*<<< orphan*/  mode; int /*<<< orphan*/  size; } ;
struct coresight_device {int /*<<< orphan*/  dev; } ;
struct catu_etr_buf {int /*<<< orphan*/  sladdr; struct tmc_sg_table* catu_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  CATU_DEFAULT_INADDR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETR_MODE_CATU ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tmc_sg_table*) ; 
 int FUNC1 (struct tmc_sg_table*) ; 
 struct tmc_sg_table* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct catu_etr_buf*) ; 
 struct catu_etr_buf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct coresight_device* FUNC5 (struct tmc_drvdata*) ; 

__attribute__((used)) static int FUNC6(struct tmc_drvdata *tmc_drvdata,
			      struct etr_buf *etr_buf, int node, void **pages)
{
	struct coresight_device *csdev;
	struct tmc_sg_table *catu_table;
	struct catu_etr_buf *catu_buf;

	csdev = FUNC5(tmc_drvdata);
	if (!csdev)
		return -ENODEV;
	catu_buf = FUNC4(sizeof(*catu_buf), GFP_KERNEL);
	if (!catu_buf)
		return -ENOMEM;

	catu_table = FUNC2(&csdev->dev, node,
					etr_buf->size, pages);
	if (FUNC0(catu_table)) {
		FUNC3(catu_buf);
		return FUNC1(catu_table);
	}

	etr_buf->mode = ETR_MODE_CATU;
	etr_buf->private = catu_buf;
	etr_buf->hwaddr = CATU_DEFAULT_INADDR;

	catu_buf->catu_table = catu_table;
	/* Get the table base address */
	catu_buf->sladdr = catu_table->table_daddr;

	return 0;
}