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
typedef  int u32 ;
struct pcap_keys {int /*<<< orphan*/  input; int /*<<< orphan*/  pcap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_HP ; 
 int /*<<< orphan*/  KEY_POWER ; 
#define  PCAP_IRQ_MIC 129 
#define  PCAP_IRQ_ONOFF 128 
 int /*<<< orphan*/  PCAP_REG_PSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *_pcap_keys)
{
	struct pcap_keys *pcap_keys = _pcap_keys;
	int pirq = FUNC3(pcap_keys->pcap, irq);
	u32 pstat;

	FUNC0(pcap_keys->pcap, PCAP_REG_PSTAT, &pstat);
	pstat &= 1 << pirq;

	switch (pirq) {
	case PCAP_IRQ_ONOFF:
		FUNC1(pcap_keys->input, KEY_POWER, !pstat);
		break;
	case PCAP_IRQ_MIC:
		FUNC1(pcap_keys->input, KEY_HP, !pstat);
		break;
	}

	FUNC2(pcap_keys->input);

	return IRQ_HANDLED;
}