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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct sur40_state {struct sur40_state* bulk_in_buffer; int /*<<< orphan*/  input; int /*<<< orphan*/  v4l2; int /*<<< orphan*/  vdev; int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sur40_state*) ; 
 struct sur40_state* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *interface)
{
	struct sur40_state *sur40 = FUNC4(interface);

	FUNC6(&sur40->hdl);
	FUNC8(&sur40->vdev);
	FUNC7(&sur40->v4l2);

	FUNC2(sur40->input);
	FUNC1(sur40->input);
	FUNC3(sur40->bulk_in_buffer);
	FUNC3(sur40);

	FUNC5(interface, NULL);
	FUNC0(&interface->dev, "%s is now disconnected\n", DRIVER_DESC);
}