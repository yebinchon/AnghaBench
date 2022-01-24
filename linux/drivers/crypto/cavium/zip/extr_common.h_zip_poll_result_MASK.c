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
struct TYPE_2__ {int /*<<< orphan*/  compcode; } ;
union zip_zres_s {TYPE_1__ s; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(union zip_zres_s *result)
{
	int retries = 1000;

	while (!result->s.compcode) {
		if (!--retries) {
			FUNC0("ZIP ERR: request timed out");
			return -ETIMEDOUT;
		}
		FUNC2(10);
		/*
		 * Force re-reading of compcode which is updated
		 * by the ZIP coprocessor.
		 */
		FUNC1();
	}
	return 0;
}