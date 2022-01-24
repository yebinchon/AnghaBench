#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hash_device_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* hash_algs ; 

__attribute__((used)) static void FUNC2(struct hash_device_data *device_data)
{
	int i;

	for (i = 0; i < FUNC0(hash_algs); i++)
		FUNC1(&hash_algs[i].hash);
}