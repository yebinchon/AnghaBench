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
struct wr_msg_ctl_info {int /*<<< orphan*/  link; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {scalar_t__ mtu; int /*<<< orphan*/ * devc; int /*<<< orphan*/ * ops; int /*<<< orphan*/  wr_free_list; int /*<<< orphan*/  wr_processing_list; int /*<<< orphan*/  wr_processing_spinlock; int /*<<< orphan*/  wait_hw_ready; } ;
struct ish_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPC_PAYLOAD_SIZE ; 
 int IPC_TX_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ish_hw_ops ; 
 int /*<<< orphan*/  FUNC4 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct ishtp_device *FUNC7(struct pci_dev *pdev)
{
	struct ishtp_device *dev;
	int	i;

	dev = FUNC2(&pdev->dev,
			   sizeof(struct ishtp_device) + sizeof(struct ish_hw),
			   GFP_KERNEL);
	if (!dev)
		return NULL;

	FUNC4(dev);

	FUNC3(&dev->wait_hw_ready);

	FUNC6(&dev->wr_processing_spinlock);

	/* Init IPC processing and free lists */
	FUNC0(&dev->wr_processing_list);
	FUNC0(&dev->wr_free_list);
	for (i = 0; i < IPC_TX_FIFO_SIZE; i++) {
		struct wr_msg_ctl_info	*tx_buf;

		tx_buf = FUNC2(&pdev->dev,
				      sizeof(struct wr_msg_ctl_info),
				      GFP_KERNEL);
		if (!tx_buf) {
			/*
			 * IPC buffers may be limited or not available
			 * at all - although this shouldn't happen
			 */
			FUNC1(dev->devc,
				"[ishtp-ish]: failure in Tx FIFO allocations (%d)\n",
				i);
			break;
		}
		FUNC5(&tx_buf->link, &dev->wr_free_list);
	}

	dev->ops = &ish_hw_ops;
	dev->devc = &pdev->dev;
	dev->mtu = IPC_PAYLOAD_SIZE - sizeof(struct ishtp_msg_hdr);
	return dev;
}