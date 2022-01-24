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
struct dpaa2_caam_priv {int /*<<< orphan*/  dfs_root; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct dpaa2_caam_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpseci_dbg_fq_ops ; 

void FUNC3(struct dpaa2_caam_priv *priv)
{
	priv->dfs_root = FUNC0(FUNC2(priv->dev), NULL);

	FUNC1("fq_stats", 0444, priv->dfs_root, priv,
			    &dpseci_dbg_fq_ops);
}