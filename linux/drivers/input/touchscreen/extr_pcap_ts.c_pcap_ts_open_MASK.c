#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pcap_ts {int /*<<< orphan*/  work; int /*<<< orphan*/  read_state; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ADC_TS_M_STANDBY ; 
 struct pcap_ts* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	struct pcap_ts *pcap_ts = FUNC0(dev);

	pcap_ts->read_state = PCAP_ADC_TS_M_STANDBY;
	FUNC1(&pcap_ts->work, 0);

	return 0;
}