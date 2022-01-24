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
struct opa_smp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC1 (struct opa_smp*) ; 
 size_t FUNC2 (struct opa_smp*) ; 

__attribute__((used)) static inline void FUNC3(struct opa_smp *smp)
{
	void *data = FUNC1(smp);
	size_t size = FUNC2(smp);

	FUNC0(data, 0, size);
}