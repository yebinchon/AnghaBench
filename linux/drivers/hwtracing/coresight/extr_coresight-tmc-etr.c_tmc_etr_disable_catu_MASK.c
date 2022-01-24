#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tmc_drvdata {int /*<<< orphan*/  etr_buf; } ;
struct coresight_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct coresight_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct coresight_device*,int /*<<< orphan*/ ) ; 
 struct coresight_device* FUNC2 (struct tmc_drvdata*) ; 

__attribute__((used)) static inline void FUNC3(struct tmc_drvdata *drvdata)
{
	struct coresight_device *catu = FUNC2(drvdata);

	if (catu && FUNC0(catu)->disable)
		FUNC0(catu)->disable(catu, drvdata->etr_buf);
}