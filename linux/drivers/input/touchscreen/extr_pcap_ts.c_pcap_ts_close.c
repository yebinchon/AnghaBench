
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_ts {int read_state; int pcap; int work; } ;
struct input_dev {int dummy; } ;


 int PCAP_ADC_TS_M_NONTS ;
 int PCAP_ADC_TS_M_SHIFT ;
 int cancel_delayed_work_sync (int *) ;
 struct pcap_ts* input_get_drvdata (struct input_dev*) ;
 int pcap_set_ts_bits (int ,int) ;

__attribute__((used)) static void pcap_ts_close(struct input_dev *dev)
{
 struct pcap_ts *pcap_ts = input_get_drvdata(dev);

 cancel_delayed_work_sync(&pcap_ts->work);

 pcap_ts->read_state = PCAP_ADC_TS_M_NONTS;
 pcap_set_ts_bits(pcap_ts->pcap,
    pcap_ts->read_state << PCAP_ADC_TS_M_SHIFT);
}
