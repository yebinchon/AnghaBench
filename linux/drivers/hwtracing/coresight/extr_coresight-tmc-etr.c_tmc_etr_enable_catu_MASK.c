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
struct tmc_drvdata {int dummy; } ;
struct etr_buf {int dummy; } ;
struct coresight_device {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct coresight_device*,struct etr_buf*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct coresight_device*) ; 
 int FUNC1 (struct coresight_device*,struct etr_buf*) ; 
 struct coresight_device* FUNC2 (struct tmc_drvdata*) ; 

__attribute__((used)) static inline int FUNC3(struct tmc_drvdata *drvdata,
				      struct etr_buf *etr_buf)
{
	struct coresight_device *catu = FUNC2(drvdata);

	if (catu && FUNC0(catu)->enable)
		return FUNC0(catu)->enable(catu, etr_buf);
	return 0;
}