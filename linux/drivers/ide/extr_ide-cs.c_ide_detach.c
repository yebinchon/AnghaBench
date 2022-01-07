
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; int * priv; } ;
typedef int ide_info_t ;


 int dev_dbg (int *,char*,struct pcmcia_device*) ;
 int ide_release (struct pcmcia_device*) ;
 int kfree (int *) ;

__attribute__((used)) static void ide_detach(struct pcmcia_device *link)
{
    ide_info_t *info = link->priv;

    dev_dbg(&link->dev, "ide_detach(0x%p)\n", link);

    ide_release(link);

    kfree(info);
}
