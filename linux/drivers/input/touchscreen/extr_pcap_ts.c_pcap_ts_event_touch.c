
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_ts {scalar_t__ read_state; int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ PCAP_ADC_TS_M_PRESSURE ;
 scalar_t__ PCAP_ADC_TS_M_STANDBY ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t pcap_ts_event_touch(int pirq, void *data)
{
 struct pcap_ts *pcap_ts = data;

 if (pcap_ts->read_state == PCAP_ADC_TS_M_STANDBY) {
  pcap_ts->read_state = PCAP_ADC_TS_M_PRESSURE;
  schedule_delayed_work(&pcap_ts->work, 0);
 }
 return IRQ_HANDLED;
}
