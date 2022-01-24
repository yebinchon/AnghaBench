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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct coresight_device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coresight_bustype ; 
 int /*<<< orphan*/  coresight_sink_by_id ; 
 struct coresight_device* FUNC1 (struct device*) ; 

struct coresight_device *FUNC2(u32 id)
{
	struct device *dev = NULL;

	dev = FUNC0(&coresight_bustype, NULL, &id,
			      coresight_sink_by_id);

	return dev ? FUNC1(dev) : NULL;
}