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
struct saa7146_dev {int /*<<< orphan*/  pci; } ;
struct saa7146_buf {int /*<<< orphan*/ * pt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct saa7146_dev *dev, struct saa7146_buf *buf)
{
	FUNC0(dev->pci, &buf->pt[0]);
	FUNC0(dev->pci, &buf->pt[1]);
	FUNC0(dev->pci, &buf->pt[2]);
}