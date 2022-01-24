#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i801_priv {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int SMBHSTSTS_INTR ; 
 int STATUS_ERROR_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct i801_priv *priv)
{
	int timeout = 0;
	int status;

	/* We will always wait for a fraction of a second! */
	do {
		FUNC3(250, 500);
		status = FUNC2(FUNC0(priv));
	} while (((status & SMBHSTSTS_HOST_BUSY) ||
		  !(status & (STATUS_ERROR_FLAGS | SMBHSTSTS_INTR))) &&
		 (timeout++ < MAX_RETRIES));

	if (timeout > MAX_RETRIES) {
		FUNC1(&priv->pci_dev->dev, "INTR Timeout!\n");
		return -ETIMEDOUT;
	}
	return status & (STATUS_ERROR_FLAGS | SMBHSTSTS_INTR);
}