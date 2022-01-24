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
struct nvkm_i2c_aux {int enabled; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_aux*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nvkm_i2c_aux *aux)
{
	FUNC0(aux, "init");
	FUNC1(&aux->mutex);
	aux->enabled = true;
	FUNC2(&aux->mutex);
}