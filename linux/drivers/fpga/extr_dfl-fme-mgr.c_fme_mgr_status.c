
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fpga_manager {struct fme_mgr_priv* priv; } ;
struct fme_mgr_priv {int pr_error; } ;


 int pr_error_to_mgr_status (int ) ;

__attribute__((used)) static u64 fme_mgr_status(struct fpga_manager *mgr)
{
 struct fme_mgr_priv *priv = mgr->priv;

 return pr_error_to_mgr_status(priv->pr_error);
}
