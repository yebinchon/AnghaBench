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
typedef  int /*<<< orphan*/  uint16_t ;
struct xadc {TYPE_1__* ops; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int (* write ) (struct xadc*,unsigned int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct xadc*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct xadc *xadc, unsigned int reg,
	uint16_t val)
{
	FUNC0(&xadc->mutex);
	return xadc->ops->write(xadc, reg, val);
}