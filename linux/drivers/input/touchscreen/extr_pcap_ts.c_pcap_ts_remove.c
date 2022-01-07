
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcap_ts {int input; int work; int pcap; } ;


 int PCAP_IRQ_TS ;
 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,struct pcap_ts*) ;
 int input_unregister_device (int ) ;
 int kfree (struct pcap_ts*) ;
 int pcap_to_irq (int ,int ) ;
 struct pcap_ts* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pcap_ts_remove(struct platform_device *pdev)
{
 struct pcap_ts *pcap_ts = platform_get_drvdata(pdev);

 free_irq(pcap_to_irq(pcap_ts->pcap, PCAP_IRQ_TS), pcap_ts);
 cancel_delayed_work_sync(&pcap_ts->work);

 input_unregister_device(pcap_ts->input);

 kfree(pcap_ts);

 return 0;
}
