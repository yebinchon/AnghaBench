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
typedef  unsigned int u32 ;
struct rza1_irqc_priv {TYPE_1__* map; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {unsigned int args_count; unsigned int* args; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQC_NUM_IRQ ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 struct device_node* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 unsigned int FUNC4 (struct device_node*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct rza1_irqc_priv *priv,
			       struct device_node *gic_node)
{
	unsigned int imaplen, i, j, ret;
	struct device *dev = priv->dev;
	struct device_node *ipar;
	const __be32 *imap;
	u32 intsize;

	imap = FUNC2(dev->of_node, "interrupt-map", &imaplen);
	if (!imap)
		return -EINVAL;

	for (i = 0; i < IRQC_NUM_IRQ; i++) {
		if (imaplen < 3)
			return -EINVAL;

		/* Check interrupt number, ignore sense */
		if (FUNC0(imap) != i)
			return -EINVAL;

		ipar = FUNC1(FUNC0(imap + 2));
		if (ipar != gic_node) {
			FUNC3(ipar);
			return -EINVAL;
		}

		imap += 3;
		imaplen -= 3;

		ret = FUNC4(ipar, "#interrupt-cells", &intsize);
		FUNC3(ipar);
		if (ret)
			return ret;

		if (imaplen < intsize)
			return -EINVAL;

		priv->map[i].args_count = intsize;
		for (j = 0; j < intsize; j++)
			priv->map[i].args[j] = FUNC0(imap++);

		imaplen -= intsize;
	}

	return 0;
}