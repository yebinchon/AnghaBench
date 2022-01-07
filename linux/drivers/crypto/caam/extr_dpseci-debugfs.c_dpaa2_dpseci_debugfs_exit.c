
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_caam_priv {int dfs_root; } ;


 int debugfs_remove_recursive (int ) ;

void dpaa2_dpseci_debugfs_exit(struct dpaa2_caam_priv *priv)
{
 debugfs_remove_recursive(priv->dfs_root);
}
