
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_extension {int driver; int name; } ;


 int DEB_EE (char*,struct saa7146_extension*) ;
 int pci_unregister_driver (int *) ;
 int pr_info (char*,int ) ;

int saa7146_unregister_extension(struct saa7146_extension* ext)
{
 DEB_EE("ext:%p\n", ext);
 pr_info("unregister extension '%s'\n", ext->name);
 pci_unregister_driver(&ext->driver);
 return 0;
}
