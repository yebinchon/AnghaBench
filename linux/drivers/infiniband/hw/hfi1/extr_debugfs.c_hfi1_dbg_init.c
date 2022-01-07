
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRIVER_NAME ;
 int _driver_stats_file_ops ;
 int _driver_stats_names_file_ops ;
 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int hfi1_dbg_root ;

void hfi1_dbg_init(void)
{
 hfi1_dbg_root = debugfs_create_dir(DRIVER_NAME, ((void*)0));
 debugfs_create_file("driver_stats_names", 0444, hfi1_dbg_root, ((void*)0),
       &_driver_stats_names_file_ops);
 debugfs_create_file("driver_stats", 0444, hfi1_dbg_root, ((void*)0),
       &_driver_stats_file_ops);
}
