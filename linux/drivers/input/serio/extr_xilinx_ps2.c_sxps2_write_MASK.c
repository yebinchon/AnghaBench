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
struct xps2data {int /*<<< orphan*/  lock; scalar_t__ base_address; } ;
struct serio {struct xps2data* port_data; } ;

/* Variables and functions */
 scalar_t__ XPS2_STATUS_OFFSET ; 
 int XPS2_STATUS_TX_FULL ; 
 scalar_t__ XPS2_TX_DATA_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct serio *pserio, unsigned char c)
{
	struct xps2data *drvdata = pserio->port_data;
	unsigned long flags;
	u32 sr;
	int status = -1;

	FUNC2(&drvdata->lock, flags);

	/* If the PS/2 transmitter is empty send a byte of data */
	sr = FUNC0(drvdata->base_address + XPS2_STATUS_OFFSET);
	if (!(sr & XPS2_STATUS_TX_FULL)) {
		FUNC1(drvdata->base_address + XPS2_TX_DATA_OFFSET, c);
		status = 0;
	}

	FUNC3(&drvdata->lock, flags);

	return status;
}