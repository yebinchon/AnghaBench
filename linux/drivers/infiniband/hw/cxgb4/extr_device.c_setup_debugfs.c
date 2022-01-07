
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_dev {int debugfs_root; } ;


 int S_IWUSR ;
 scalar_t__ c4iw_wr_log ;
 int debugfs_create_file_size (char*,int ,int ,void*,int *,int) ;
 int ep_debugfs_fops ;
 int qp_debugfs_fops ;
 int stag_debugfs_fops ;
 int stats_debugfs_fops ;
 int wr_log_debugfs_fops ;

__attribute__((used)) static void setup_debugfs(struct c4iw_dev *devp)
{
 debugfs_create_file_size("qps", S_IWUSR, devp->debugfs_root,
     (void *)devp, &qp_debugfs_fops, 4096);

 debugfs_create_file_size("stags", S_IWUSR, devp->debugfs_root,
     (void *)devp, &stag_debugfs_fops, 4096);

 debugfs_create_file_size("stats", S_IWUSR, devp->debugfs_root,
     (void *)devp, &stats_debugfs_fops, 4096);

 debugfs_create_file_size("eps", S_IWUSR, devp->debugfs_root,
     (void *)devp, &ep_debugfs_fops, 4096);

 if (c4iw_wr_log)
  debugfs_create_file_size("wr_log", S_IWUSR, devp->debugfs_root,
      (void *)devp, &wr_log_debugfs_fops, 4096);
}
