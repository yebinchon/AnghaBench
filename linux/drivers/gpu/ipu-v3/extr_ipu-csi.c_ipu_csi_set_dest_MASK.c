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
struct ipu_csi {int /*<<< orphan*/  lock; } ;
typedef  enum ipu_csi_dest { ____Placeholder_ipu_csi_dest } ipu_csi_dest ;

/* Variables and functions */
 int CSI_DATA_DEST_IC ; 
 int CSI_DATA_DEST_IDMAC ; 
 int /*<<< orphan*/  CSI_SENS_CONF ; 
 int CSI_SENS_CONF_DATA_DEST_MASK ; 
 int CSI_SENS_CONF_DATA_DEST_SHIFT ; 
 int IPU_CSI_DEST_IDMAC ; 
 int FUNC0 (struct ipu_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_csi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ipu_csi *csi, enum ipu_csi_dest csi_dest)
{
	unsigned long flags;
	u32 csi_sens_conf, dest;

	if (csi_dest == IPU_CSI_DEST_IDMAC)
		dest = CSI_DATA_DEST_IDMAC;
	else
		dest = CSI_DATA_DEST_IC; /* IC or VDIC */

	FUNC2(&csi->lock, flags);

	csi_sens_conf = FUNC0(csi, CSI_SENS_CONF);
	csi_sens_conf &= ~CSI_SENS_CONF_DATA_DEST_MASK;
	csi_sens_conf |= (dest << CSI_SENS_CONF_DATA_DEST_SHIFT);
	FUNC1(csi, csi_sens_conf, CSI_SENS_CONF);

	FUNC3(&csi->lock, flags);

	return 0;
}