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
typedef  int u16 ;
struct ipoib_dev_priv {int pkey; TYPE_1__* dev; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; } ;
struct TYPE_2__ {int* broadcast; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipoib_dev_priv*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC3(struct ipoib_dev_priv *priv)
{
	int result;
	u16 prev_pkey;

	prev_pkey = priv->pkey;
	result = FUNC0(priv->ca, priv->port, 0, &priv->pkey);
	if (result) {
		FUNC2(priv, "ib_query_pkey port %d failed (ret = %d)\n",
			   priv->port, result);
		return result;
	}

	priv->pkey |= 0x8000;

	if (prev_pkey != priv->pkey) {
		FUNC1(priv, "pkey changed from 0x%x to 0x%x\n",
			  prev_pkey, priv->pkey);
		/*
		 * Update the pkey in the broadcast address, while making sure to set
		 * the full membership bit, so that we join the right broadcast group.
		 */
		priv->dev->broadcast[8] = priv->pkey >> 8;
		priv->dev->broadcast[9] = priv->pkey & 0xff;
		return 0;
	}

	return 1;
}