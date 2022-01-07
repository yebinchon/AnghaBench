
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_caam_priv {int dfs_root; int dev; } ;


 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,struct dpaa2_caam_priv*,int *) ;
 int dev_name (int ) ;
 int dpseci_dbg_fq_ops ;

void dpaa2_dpseci_debugfs_init(struct dpaa2_caam_priv *priv)
{
 priv->dfs_root = debugfs_create_dir(dev_name(priv->dev), ((void*)0));

 debugfs_create_file("fq_stats", 0444, priv->dfs_root, priv,
       &dpseci_dbg_fq_ops);
}
