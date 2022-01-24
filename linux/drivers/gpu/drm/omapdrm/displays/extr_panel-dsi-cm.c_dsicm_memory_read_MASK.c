#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int hactive; int vactive; } ;
struct panel_drv_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  channel; TYPE_2__* pdev; TYPE_1__ vm; int /*<<< orphan*/  enabled; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_4__* ops; int /*<<< orphan*/ * dev; } ;
struct TYPE_7__ {int (* set_max_rx_packet_size ) (struct omap_dss_device*,int /*<<< orphan*/ ,int) ;int (* dcs_read ) (struct omap_dss_device*,int /*<<< orphan*/ ,int,void*,size_t) ;int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_8__ {TYPE_3__ dsi; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct panel_drv_data*,int,int,int,int) ; 
 int FUNC2 (struct panel_drv_data*) ; 
 size_t FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*) ; 
 int FUNC8 (struct omap_dss_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct omap_dss_device*,int /*<<< orphan*/ ,int,void*,size_t) ; 
 int FUNC10 (struct omap_dss_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC12 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC13(struct omap_dss_device *dssdev,
		void *buf, size_t size,
		u16 x, u16 y, u16 w, u16 h)
{
	struct panel_drv_data *ddata = FUNC12(dssdev);
	struct omap_dss_device *src = ddata->src;
	int r;
	int first = 1;
	int plen;
	unsigned int buf_used = 0;

	if (size < w * h * 3)
		return -ENOMEM;

	FUNC4(&ddata->lock);

	if (!ddata->enabled) {
		r = -ENODEV;
		goto err1;
	}

	size = FUNC3((u32)w * h * 3,
		   ddata->vm.hactive * ddata->vm.vactive * 3);

	src->ops->dsi.bus_lock(src);

	r = FUNC2(ddata);
	if (r)
		goto err2;

	/* plen 1 or 2 goes into short packet. until checksum error is fixed,
	 * use short packets. plen 32 works, but bigger packets seem to cause
	 * an error. */
	if (size % 2)
		plen = 1;
	else
		plen = 2;

	FUNC1(ddata, x, y, w, h);

	r = src->ops->dsi.set_max_rx_packet_size(src, ddata->channel, plen);
	if (r)
		goto err2;

	while (buf_used < size) {
		u8 dcs_cmd = first ? 0x2e : 0x3e;
		first = 0;

		r = src->ops->dsi.dcs_read(src, ddata->channel, dcs_cmd,
				buf + buf_used, size - buf_used);

		if (r < 0) {
			FUNC0(dssdev->dev, "read error\n");
			goto err3;
		}

		buf_used += r;

		if (r < plen) {
			FUNC0(&ddata->pdev->dev, "short read\n");
			break;
		}

		if (FUNC6(current)) {
			FUNC0(&ddata->pdev->dev, "signal pending, "
					"aborting memory read\n");
			r = -ERESTARTSYS;
			goto err3;
		}
	}

	r = buf_used;

err3:
	src->ops->dsi.set_max_rx_packet_size(src, ddata->channel, 1);
err2:
	src->ops->dsi.bus_unlock(src);
err1:
	FUNC5(&ddata->lock);
	return r;
}