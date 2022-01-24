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
typedef  int u8 ;
typedef  int u16 ;
struct sharp_panel {struct mipi_dsi_device* link1; } ;
struct mipi_dsi_device {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 scalar_t__ FUNC1 (struct mipi_dsi_device*) ; 
 scalar_t__ FUNC2 (struct mipi_dsi_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct sharp_panel *sharp, u16 offset, u8 value)
{
	u8 payload[3] = { offset >> 8, offset & 0xff, value };
	struct mipi_dsi_device *dsi = sharp->link1;
	ssize_t err;

	err = FUNC2(dsi, payload, sizeof(payload));
	if (err < 0) {
		FUNC0(&dsi->dev, "failed to write %02x to %04x: %zd\n",
			value, offset, err);
		return err;
	}

	err = FUNC1(dsi);
	if (err < 0) {
		FUNC0(&dsi->dev, "failed to send DCS nop: %zd\n", err);
		return err;
	}

	FUNC3(10, 20);

	return 0;
}