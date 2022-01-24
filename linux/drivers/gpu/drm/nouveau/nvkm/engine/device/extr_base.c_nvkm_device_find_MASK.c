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
typedef  int /*<<< orphan*/  u64 ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nv_devices_mutex ; 
 struct nvkm_device* FUNC2 (int /*<<< orphan*/ ) ; 

struct nvkm_device *
FUNC3(u64 handle)
{
	struct nvkm_device *device;
	FUNC0(&nv_devices_mutex);
	device = FUNC2(handle);
	FUNC1(&nv_devices_mutex);
	return device;
}