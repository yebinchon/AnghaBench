
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i801_priv {int dummy; } ;


 int EIO ;
 int SMBAUXCTL (struct i801_priv*) ;
 int SMBAUXCTL_E32B ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int i801_set_block_buffer_mode(struct i801_priv *priv)
{
 outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_E32B, SMBAUXCTL(priv));
 if ((inb_p(SMBAUXCTL(priv)) & SMBAUXCTL_E32B) == 0)
  return -EIO;
 return 0;
}
