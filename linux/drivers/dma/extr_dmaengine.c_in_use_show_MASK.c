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
struct dma_chan {int client_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 struct dma_chan* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  dma_list_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			   char *buf)
{
	struct dma_chan *chan;
	int err;

	FUNC1(&dma_list_mutex);
	chan = FUNC0(dev);
	if (chan)
		err = FUNC3(buf, "%d\n", chan->client_count);
	else
		err = -ENODEV;
	FUNC2(&dma_list_mutex);

	return err;
}