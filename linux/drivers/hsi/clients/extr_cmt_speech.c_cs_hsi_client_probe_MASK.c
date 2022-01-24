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
struct hsi_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int channel_id_cmd; int channel_id_data; int /*<<< orphan*/  dataind_queue; int /*<<< orphan*/  chardev_queue; int /*<<< orphan*/ * hi; struct hsi_client* cl; scalar_t__ opened; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cs_char_data ; 
 int /*<<< orphan*/  cs_char_miscdev ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct hsi_client*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hsi_client* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	int err = 0;
	struct hsi_client *cl = FUNC7(dev);

	FUNC1(dev, "hsi_client_probe\n");
	FUNC4(&cs_char_data.wait);
	FUNC6(&cs_char_data.lock);
	cs_char_data.opened = 0;
	cs_char_data.cl = cl;
	cs_char_data.hi = NULL;
	FUNC0(&cs_char_data.chardev_queue);
	FUNC0(&cs_char_data.dataind_queue);

	cs_char_data.channel_id_cmd = FUNC3(cl,
		"speech-control");
	if (cs_char_data.channel_id_cmd < 0) {
		err = cs_char_data.channel_id_cmd;
		FUNC2(dev, "Could not get cmd channel (%d)\n", err);
		return err;
	}

	cs_char_data.channel_id_data = FUNC3(cl,
		"speech-data");
	if (cs_char_data.channel_id_data < 0) {
		err = cs_char_data.channel_id_data;
		FUNC2(dev, "Could not get data channel (%d)\n", err);
		return err;
	}

	err = FUNC5(&cs_char_miscdev);
	if (err)
		FUNC2(dev, "Failed to register: %d\n", err);

	return err;
}