
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcap_keys {int input; int pcap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_HP ;
 int KEY_POWER ;


 int PCAP_REG_PSTAT ;
 int ezx_pcap_read (int ,int ,int*) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int irq_to_pcap (int ,int) ;

__attribute__((used)) static irqreturn_t pcap_keys_handler(int irq, void *_pcap_keys)
{
 struct pcap_keys *pcap_keys = _pcap_keys;
 int pirq = irq_to_pcap(pcap_keys->pcap, irq);
 u32 pstat;

 ezx_pcap_read(pcap_keys->pcap, PCAP_REG_PSTAT, &pstat);
 pstat &= 1 << pirq;

 switch (pirq) {
 case 128:
  input_report_key(pcap_keys->input, KEY_POWER, !pstat);
  break;
 case 129:
  input_report_key(pcap_keys->input, KEY_HP, !pstat);
  break;
 }

 input_sync(pcap_keys->input);

 return IRQ_HANDLED;
}
