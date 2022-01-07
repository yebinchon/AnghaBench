
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QIB_DRV_NAME ;
 int debugfs_create_dir (int ,int *) ;
 int qib_dbg_root ;

void qib_dbg_init(void)
{
 qib_dbg_root = debugfs_create_dir(QIB_DRV_NAME, ((void*)0));
}
