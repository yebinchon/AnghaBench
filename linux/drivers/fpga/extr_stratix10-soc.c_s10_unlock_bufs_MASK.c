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
struct s10_priv {TYPE_1__* svc_bufs; } ;
struct TYPE_2__ {void* buf; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t NUM_SVC_BUFS ; 
 int /*<<< orphan*/  SVC_BUF_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct s10_priv *priv, void *kaddr)
{
	uint i;

	if (!kaddr)
		return;

	for (i = 0; i < NUM_SVC_BUFS; i++)
		if (priv->svc_bufs[i].buf == kaddr) {
			FUNC1(SVC_BUF_LOCK,
					 &priv->svc_bufs[i].lock);
			return;
		}

	FUNC0(1, "Unknown buffer returned from service layer %p\n", kaddr);
}