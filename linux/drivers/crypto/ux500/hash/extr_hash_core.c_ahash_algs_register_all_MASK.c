#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct hash_device_data {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_8__ {TYPE_1__ base; } ;
struct TYPE_10__ {TYPE_2__ halg; } ;
struct TYPE_9__ {TYPE_4__ hash; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* hash_algs ; 

__attribute__((used)) static int FUNC4(struct hash_device_data *device_data)
{
	int ret;
	int i;
	int count;

	for (i = 0; i < FUNC0(hash_algs); i++) {
		ret = FUNC1(&hash_algs[i].hash);
		if (ret) {
			count = i;
			FUNC3(device_data->dev, "%s: alg registration failed\n",
				hash_algs[i].hash.halg.base.cra_driver_name);
			goto unreg;
		}
	}
	return 0;
unreg:
	for (i = 0; i < count; i++)
		FUNC2(&hash_algs[i].hash);
	return ret;
}