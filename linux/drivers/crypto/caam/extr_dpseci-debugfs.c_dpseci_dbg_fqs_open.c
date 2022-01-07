
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct file {int dummy; } ;
struct dpaa2_caam_priv {int dev; } ;


 int dev_err (int ,char*) ;
 int dpseci_dbg_fqs_show ;
 int single_open (struct file*,int ,struct dpaa2_caam_priv*) ;

__attribute__((used)) static int dpseci_dbg_fqs_open(struct inode *inode, struct file *file)
{
 int err;
 struct dpaa2_caam_priv *priv;

 priv = (struct dpaa2_caam_priv *)inode->i_private;

 err = single_open(file, dpseci_dbg_fqs_show, priv);
 if (err < 0)
  dev_err(priv->dev, "single_open() failed\n");

 return err;
}
