
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ide_port_info {int host_flags; } ;
struct ide_hw {int irq; } ;
struct ide_host {int irq_flags; void* host_priv; int ** dev; } ;


 int ENOMEM ;
 int IDE_HFLAG_CS5520 ;
 int IDE_HFLAG_NO_DMA ;
 int IDE_HFLAG_SINGLE ;
 int IRQF_SHARED ;
 int do_ide_setup_pci_device (struct pci_dev*,struct ide_port_info const*,int) ;
 struct ide_host* ide_host_alloc (struct ide_port_info const*,struct ide_hw**,int) ;
 int ide_host_free (struct ide_host*) ;
 int ide_host_register (struct ide_host*,struct ide_port_info const*,struct ide_hw**) ;
 scalar_t__ ide_pci_is_in_compatibility_mode (struct pci_dev*) ;
 int ide_pci_setup_ports (struct pci_dev*,struct ide_port_info const*,struct ide_hw*,struct ide_hw**) ;
 int ide_setup_pci_controller (struct pci_dev*,int,struct ide_port_info const*,int) ;
 void* pci_get_legacy_ide_irq (struct pci_dev*,int) ;
 int pci_release_selected_regions (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct ide_host*) ;

int ide_pci_init_two(struct pci_dev *dev1, struct pci_dev *dev2,
       const struct ide_port_info *d, void *priv)
{
 struct pci_dev *pdev[] = { dev1, dev2 };
 struct ide_host *host;
 int ret, i, n_ports = dev2 ? 4 : 2, bars;
 struct ide_hw hw[4], *hws[] = { ((void*)0), ((void*)0), ((void*)0), ((void*)0) };

 if (d->host_flags & IDE_HFLAG_SINGLE)
  bars = (1 << 2) - 1;
 else
  bars = (1 << 4) - 1;

 if ((d->host_flags & IDE_HFLAG_NO_DMA) == 0) {
  if (d->host_flags & IDE_HFLAG_CS5520)
   bars |= (1 << 2);
  else
   bars |= (1 << 4);
 }

 for (i = 0; i < n_ports / 2; i++) {
  ret = ide_setup_pci_controller(pdev[i], bars, d, !i);
  if (ret < 0) {
   if (i == 1)
    pci_release_selected_regions(pdev[0], bars);
   goto out;
  }

  ide_pci_setup_ports(pdev[i], d, &hw[i*2], &hws[i*2]);
 }

 host = ide_host_alloc(d, hws, n_ports);
 if (host == ((void*)0)) {
  ret = -ENOMEM;
  goto out_free_bars;
 }

 host->dev[0] = &dev1->dev;
 if (dev2)
  host->dev[1] = &dev2->dev;

 host->host_priv = priv;
 host->irq_flags = IRQF_SHARED;

 pci_set_drvdata(pdev[0], host);
 if (dev2)
  pci_set_drvdata(pdev[1], host);

 for (i = 0; i < n_ports / 2; i++) {
  ret = do_ide_setup_pci_device(pdev[i], d, !i);





  if (ret < 0)
   goto out_free_bars;


  if (ide_pci_is_in_compatibility_mode(pdev[i])) {
   hw[i*2].irq = pci_get_legacy_ide_irq(pdev[i], 0);
   hw[i*2 + 1].irq = pci_get_legacy_ide_irq(pdev[i], 1);
  } else
   hw[i*2 + 1].irq = hw[i*2].irq = ret;
 }

 ret = ide_host_register(host, d, hws);
 if (ret)
  ide_host_free(host);
 else
  goto out;

out_free_bars:
 i = n_ports / 2;
 while (i--)
  pci_release_selected_regions(pdev[i], bars);
out:
 return ret;
}
