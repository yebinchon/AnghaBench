
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgasr_priv {int * debugfs_root; } ;


 int debugfs_remove_recursive (int *) ;

__attribute__((used)) static void vga_switcheroo_debugfs_fini(struct vgasr_priv *priv)
{
 debugfs_remove_recursive(priv->debugfs_root);
 priv->debugfs_root = ((void*)0);
}
