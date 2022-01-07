
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int dummy; } ;


 int MASK_22 ;
 int MC1 ;
 int saa7146_disable_clipping (struct saa7146_dev*) ;
 int saa7146_write (struct saa7146_dev*,int ,int ) ;

void saa7146_disable_overlay(struct saa7146_fh *fh)
{
 struct saa7146_dev *dev = fh->dev;


 saa7146_disable_clipping(dev);
 saa7146_write(dev, MC1, MASK_22);
}
