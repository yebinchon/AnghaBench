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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct intel_engine_execlists {scalar_t__ submit_reg; scalar_t__ ctrl_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct intel_engine_execlists *execlists, u64 desc, u32 port)
{
	if (execlists->ctrl_reg) {
		FUNC2(FUNC0(desc), execlists->submit_reg + port * 2);
		FUNC2(FUNC1(desc), execlists->submit_reg + port * 2 + 1);
	} else {
		FUNC2(FUNC1(desc), execlists->submit_reg);
		FUNC2(FUNC0(desc), execlists->submit_reg);
	}
}