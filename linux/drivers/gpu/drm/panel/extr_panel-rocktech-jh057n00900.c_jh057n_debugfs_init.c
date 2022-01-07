
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jh057n {int debugfs; } ;


 int DRV_NAME ;
 int allpixelson_fops ;
 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,struct jh057n*,int *) ;

__attribute__((used)) static void jh057n_debugfs_init(struct jh057n *ctx)
{
 ctx->debugfs = debugfs_create_dir(DRV_NAME, ((void*)0));

 debugfs_create_file("allpixelson", 0600, ctx->debugfs, ctx,
       &allpixelson_fops);
}
