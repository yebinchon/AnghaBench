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
struct gm12u320_device {int /*<<< orphan*/  conn; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gm12u320_conn_funcs ; 
 int /*<<< orphan*/  gm12u320_conn_helper_funcs ; 

__attribute__((used)) static int FUNC2(struct gm12u320_device *gm12u320)
{
	FUNC0(&gm12u320->conn, &gm12u320_conn_helper_funcs);
	return FUNC1(&gm12u320->dev, &gm12u320->conn,
				  &gm12u320_conn_funcs, DRM_MODE_CONNECTOR_VGA);
}