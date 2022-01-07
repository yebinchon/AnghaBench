
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgasr_priv {scalar_t__ debugfs_root; } ;


 scalar_t__ debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,scalar_t__,int *,int *) ;
 int vga_switcheroo_debugfs_fops ;

__attribute__((used)) static void vga_switcheroo_debugfs_init(struct vgasr_priv *priv)
{

 if (priv->debugfs_root)
  return;

 priv->debugfs_root = debugfs_create_dir("vgaswitcheroo", ((void*)0));

 debugfs_create_file("switch", 0644, priv->debugfs_root, ((void*)0),
       &vga_switcheroo_debugfs_fops);
}
