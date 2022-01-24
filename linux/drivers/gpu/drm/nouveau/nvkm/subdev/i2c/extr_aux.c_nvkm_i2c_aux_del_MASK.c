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
struct nvkm_i2c_aux {int /*<<< orphan*/  i2c; int /*<<< orphan*/  head; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_aux*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_i2c_aux*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct nvkm_i2c_aux **paux)
{
	struct nvkm_i2c_aux *aux = *paux;
	if (aux && !FUNC1(!aux->func)) {
		FUNC0(aux, "dtor");
		FUNC4(&aux->head);
		FUNC2(&aux->i2c);
		FUNC3(*paux);
		*paux = NULL;
	}
}