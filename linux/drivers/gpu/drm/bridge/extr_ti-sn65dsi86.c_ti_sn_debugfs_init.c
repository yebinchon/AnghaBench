
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int debugfs; int dev; } ;


 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,struct ti_sn_bridge*,int *) ;
 int dev_name (int ) ;
 int status_fops ;

__attribute__((used)) static void ti_sn_debugfs_init(struct ti_sn_bridge *pdata)
{
 pdata->debugfs = debugfs_create_dir(dev_name(pdata->dev), ((void*)0));

 debugfs_create_file("status", 0600, pdata->debugfs, pdata,
   &status_fops);
}
