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
struct nvkm_sec2 {int /*<<< orphan*/  work; } ;
struct nvkm_engine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvkm_sec2* FUNC1 (struct nvkm_engine*) ; 

__attribute__((used)) static int
FUNC2(struct nvkm_engine *engine, bool suspend)
{
	struct nvkm_sec2 *sec2 = FUNC1(engine);
	FUNC0(&sec2->work);
	return 0;
}