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
struct bcom_task {struct bcom_fec_priv* priv; int /*<<< orphan*/  flags; } ;
struct bcom_fec_priv {int maxbufsize; int /*<<< orphan*/  fifo; } ;
struct bcom_fec_bd {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCOM_FLAGS_NONE ; 
 scalar_t__ FUNC0 (struct bcom_task*) ; 
 struct bcom_task* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcom_task*) ; 

struct bcom_task *
FUNC3(int queue_len, phys_addr_t fifo, int maxbufsize)
{
	struct bcom_task *tsk;
	struct bcom_fec_priv *priv;

	tsk = FUNC1(queue_len, sizeof(struct bcom_fec_bd),
				sizeof(struct bcom_fec_priv));
	if (!tsk)
		return NULL;

	tsk->flags = BCOM_FLAGS_NONE;

	priv = tsk->priv;
	priv->fifo = fifo;
	priv->maxbufsize = maxbufsize;

	if (FUNC0(tsk)) {
		FUNC2(tsk);
		return NULL;
	}

	return tsk;
}