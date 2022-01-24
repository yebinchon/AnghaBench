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
typedef  int /*<<< orphan*/  u64 ;
struct spu_queue {unsigned long q_type; int /*<<< orphan*/  list; int /*<<< orphan*/  jobs; int /*<<< orphan*/  lock; int /*<<< orphan*/  sharing; } ;
struct spu_mdesc_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mdesc_handle {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct spu_queue* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct platform_device*,struct spu_mdesc_info*,char const*,struct spu_queue*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mdesc_handle*,struct platform_device*,int /*<<< orphan*/ ,struct spu_queue*,struct spu_queue**) ; 
 int FUNC8 (struct spu_queue*) ; 

__attribute__((used)) static int FUNC9(struct spu_mdesc_info *ip, struct list_head *list,
			    struct platform_device *dev, struct mdesc_handle *mdesc,
			    u64 node, const char *iname, unsigned long q_type,
			    irq_handler_t handler, struct spu_queue **table)
{
	struct spu_queue *p;
	int err;

	p = FUNC3(sizeof(struct spu_queue), GFP_KERNEL);
	if (!p) {
		FUNC2(&dev->dev, "%pOF: Could not allocate SPU queue.\n",
			dev->dev.of_node);
		return -ENOMEM;
	}

	FUNC1(&p->sharing);
	FUNC5(&p->lock);
	p->q_type = q_type;
	FUNC0(&p->jobs);
	FUNC4(&p->list, list);

	err = FUNC7(mdesc, dev, node, p, table);
	if (err)
		return err;

	err = FUNC8(p);
	if (err)
		return err;

	return FUNC6(dev, ip, iname, p, handler);
}