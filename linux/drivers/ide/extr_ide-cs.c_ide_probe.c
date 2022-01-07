
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int config_flags; TYPE_1__* priv; int dev; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ ide_info_t ;


 int CONF_AUTO_CHECK_VCC ;
 int CONF_AUTO_SET_IO ;
 int CONF_AUTO_SET_VPP ;
 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 int ide_config (struct pcmcia_device*) ;
 TYPE_1__* kzalloc (int,int ) ;

__attribute__((used)) static int ide_probe(struct pcmcia_device *link)
{
    ide_info_t *info;

    dev_dbg(&link->dev, "ide_attach()\n");


    info = kzalloc(sizeof(*info), GFP_KERNEL);
    if (!info)
 return -ENOMEM;

    info->p_dev = link;
    link->priv = info;

    link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO |
     CONF_AUTO_SET_VPP | CONF_AUTO_CHECK_VCC;

    return ide_config(link);
}
