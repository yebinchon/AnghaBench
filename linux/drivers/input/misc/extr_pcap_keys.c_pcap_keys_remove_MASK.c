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
struct platform_device {int dummy; } ;
struct pcap_keys {int /*<<< orphan*/  input; int /*<<< orphan*/  pcap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_IRQ_MIC ; 
 int /*<<< orphan*/  PCAP_IRQ_ONOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pcap_keys*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcap_keys*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcap_keys* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pcap_keys *pcap_keys = FUNC4(pdev);

	FUNC0(FUNC3(pcap_keys->pcap, PCAP_IRQ_ONOFF), pcap_keys);
	FUNC0(FUNC3(pcap_keys->pcap, PCAP_IRQ_MIC), pcap_keys);

	FUNC1(pcap_keys->input);
	FUNC2(pcap_keys);

	return 0;
}