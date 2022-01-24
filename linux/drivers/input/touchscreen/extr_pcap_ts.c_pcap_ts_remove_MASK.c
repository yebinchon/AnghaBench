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
struct pcap_ts {int /*<<< orphan*/  input; int /*<<< orphan*/  work; int /*<<< orphan*/  pcap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_IRQ_TS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pcap_ts*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcap_ts*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcap_ts* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct pcap_ts *pcap_ts = FUNC5(pdev);

	FUNC1(FUNC4(pcap_ts->pcap, PCAP_IRQ_TS), pcap_ts);
	FUNC0(&pcap_ts->work);

	FUNC2(pcap_ts->input);

	FUNC3(pcap_ts);

	return 0;
}