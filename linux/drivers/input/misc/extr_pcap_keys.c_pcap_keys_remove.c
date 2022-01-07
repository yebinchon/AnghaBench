
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcap_keys {int input; int pcap; } ;


 int PCAP_IRQ_MIC ;
 int PCAP_IRQ_ONOFF ;
 int free_irq (int ,struct pcap_keys*) ;
 int input_unregister_device (int ) ;
 int kfree (struct pcap_keys*) ;
 int pcap_to_irq (int ,int ) ;
 struct pcap_keys* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pcap_keys_remove(struct platform_device *pdev)
{
 struct pcap_keys *pcap_keys = platform_get_drvdata(pdev);

 free_irq(pcap_to_irq(pcap_keys->pcap, PCAP_IRQ_ONOFF), pcap_keys);
 free_irq(pcap_to_irq(pcap_keys->pcap, PCAP_IRQ_MIC), pcap_keys);

 input_unregister_device(pcap_keys->input);
 kfree(pcap_keys);

 return 0;
}
