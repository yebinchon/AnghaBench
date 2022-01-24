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
struct nvkm_therm {int dummy; } ;
struct nvkm_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_THERM_CTRL_AUTO ; 
 struct nvkm_therm* FUNC0 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_therm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_therm*) ; 

__attribute__((used)) static int
FUNC7(struct nvkm_subdev *subdev)
{
	struct nvkm_therm *therm = FUNC0(subdev);
	FUNC5(therm);
	FUNC4(therm);
	FUNC2(therm);
	FUNC3(therm, NVKM_THERM_CTRL_AUTO);
	FUNC6(therm);
	FUNC1(therm);
	return 0;
}