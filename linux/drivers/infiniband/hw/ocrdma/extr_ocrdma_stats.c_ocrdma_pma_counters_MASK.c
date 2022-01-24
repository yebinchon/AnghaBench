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
struct ocrdma_dev {int dummy; } ;
struct ib_pma_portcounters {void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; } ;
struct ib_mad {scalar_t__ data; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocrdma_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocrdma_dev*) ; 

int FUNC7(struct ocrdma_dev *dev,
			struct ib_mad *out_mad)
{
	struct ib_pma_portcounters *pma_cnt;

	FUNC1(out_mad->data, 0, sizeof out_mad->data);
	pma_cnt = (void *)(out_mad->data + 40);
	FUNC6(dev);

	pma_cnt->port_xmit_data    = FUNC0(FUNC4(dev));
	pma_cnt->port_rcv_data     = FUNC0(FUNC2(dev));
	pma_cnt->port_xmit_packets = FUNC0(FUNC5(dev));
	pma_cnt->port_rcv_packets  = FUNC0(FUNC3(dev));
	return 0;
}