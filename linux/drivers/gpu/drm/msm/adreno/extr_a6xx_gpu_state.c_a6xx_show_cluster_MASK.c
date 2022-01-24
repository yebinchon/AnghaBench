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
struct drm_printer {int dummy; } ;
struct a6xx_gpu_state_obj {int /*<<< orphan*/  data; struct a6xx_cluster* handle; } ;
struct a6xx_cluster {int /*<<< orphan*/  count; int /*<<< orphan*/  registers; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct a6xx_gpu_state_obj *obj,
		struct drm_printer *p)
{
	const struct a6xx_cluster *cluster = obj->handle;

	if (cluster) {
		FUNC1(p, "  - cluster-name: ", cluster->name);
		FUNC0(cluster->registers, cluster->count,
			obj->data, p);
	}
}