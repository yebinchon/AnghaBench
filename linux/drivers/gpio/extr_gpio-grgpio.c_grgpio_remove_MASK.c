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
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bgpio_lock; } ;
struct grgpio_priv {TYPE_2__ gc; scalar_t__ domain; TYPE_1__* uirqs; } ;
struct TYPE_3__ {scalar_t__ refcnt; } ;

/* Variables and functions */
 int EBUSY ; 
 int GRGPIO_MAX_NGPIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct grgpio_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct platform_device *ofdev)
{
	struct grgpio_priv *priv = FUNC2(ofdev);
	unsigned long flags;
	int i;
	int ret = 0;

	FUNC3(&priv->gc.bgpio_lock, flags);

	if (priv->domain) {
		for (i = 0; i < GRGPIO_MAX_NGPIO; i++) {
			if (priv->uirqs[i].refcnt != 0) {
				ret = -EBUSY;
				goto out;
			}
		}
	}

	FUNC0(&priv->gc);

	if (priv->domain)
		FUNC1(priv->domain);

out:
	FUNC4(&priv->gc.bgpio_lock, flags);

	return ret;
}