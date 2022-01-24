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
struct vmw_private {struct vmw_cmdbuf_man* cman; scalar_t__ has_mob; } ;
struct vmw_cmdbuf_man {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_cmdbuf_man*) ; 
 int FUNC3 (struct vmw_cmdbuf_man*,int,int) ; 
 int FUNC4 (struct vmw_private*) ; 

__attribute__((used)) static int FUNC5(struct vmw_private *dev_priv)
{
	int ret;

	if (dev_priv->has_mob) {
		ret = FUNC4(dev_priv);
		if (FUNC1(ret != 0)) {
			FUNC0("Unable to initialize "
				  "guest Memory OBjects.\n");
			return ret;
		}
	}

	if (dev_priv->cman) {
		ret = FUNC3(dev_priv->cman,
					       256*4096, 2*4096);
		if (ret) {
			struct vmw_cmdbuf_man *man = dev_priv->cman;

			dev_priv->cman = NULL;
			FUNC2(man);
		}
	}

	return 0;
}