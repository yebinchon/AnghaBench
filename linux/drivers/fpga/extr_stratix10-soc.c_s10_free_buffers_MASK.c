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
typedef  size_t uint ;
struct s10_priv {TYPE_1__* svc_bufs; int /*<<< orphan*/  chan; } ;
struct fpga_manager {struct s10_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t NUM_SVC_BUFS ; 
 int /*<<< orphan*/  SVC_BUF_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct fpga_manager *mgr)
{
	struct s10_priv *priv = mgr->priv;
	uint num_free = 0;
	uint i;

	for (i = 0; i < NUM_SVC_BUFS; i++) {
		if (!priv->svc_bufs[i].buf) {
			num_free++;
			continue;
		}

		if (!FUNC1(SVC_BUF_LOCK,
					   &priv->svc_bufs[i].lock)) {
			FUNC0(priv->chan,
						  priv->svc_bufs[i].buf);
			priv->svc_bufs[i].buf = NULL;
			num_free++;
		}
	}

	return num_free == NUM_SVC_BUFS;
}