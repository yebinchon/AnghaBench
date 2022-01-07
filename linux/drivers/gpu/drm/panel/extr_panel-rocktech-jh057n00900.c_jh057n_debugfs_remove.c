
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jh057n {int * debugfs; } ;


 int debugfs_remove_recursive (int *) ;

__attribute__((used)) static void jh057n_debugfs_remove(struct jh057n *ctx)
{
 debugfs_remove_recursive(ctx->debugfs);
 ctx->debugfs = ((void*)0);
}
