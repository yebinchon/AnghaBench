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
struct scmi_chan_info {int /*<<< orphan*/ * chan; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int id, void *p, void *data)
{
	struct scmi_chan_info *cinfo = p;
	struct idr *idr = data;

	if (!FUNC0(cinfo->chan)) {
		FUNC2(cinfo->chan);
		cinfo->chan = NULL;
	}

	FUNC1(idr, id);

	return 0;
}