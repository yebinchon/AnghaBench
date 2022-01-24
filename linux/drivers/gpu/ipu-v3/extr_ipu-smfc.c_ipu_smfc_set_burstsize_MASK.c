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
typedef  int u32 ;
struct ipu_smfc_priv {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct ipu_smfc {int chno; struct ipu_smfc_priv* priv; } ;

/* Variables and functions */
 scalar_t__ SMFC_BS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

int FUNC4(struct ipu_smfc *smfc, int burstsize)
{
	struct ipu_smfc_priv *priv = smfc->priv;
	unsigned long flags;
	u32 val, shift;

	FUNC1(&priv->lock, flags);

	shift = smfc->chno * 4;
	val = FUNC0(priv->base + SMFC_BS);
	val &= ~(0xf << shift);
	val |= burstsize << shift;
	FUNC3(val, priv->base + SMFC_BS);

	FUNC2(&priv->lock, flags);

	return 0;
}