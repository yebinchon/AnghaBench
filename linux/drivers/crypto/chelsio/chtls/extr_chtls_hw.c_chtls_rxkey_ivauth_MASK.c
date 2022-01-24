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
struct _key_ctx {int /*<<< orphan*/  iv_to_auth; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long) ; 
 int FUNC1 (unsigned long long) ; 
 int FUNC2 (unsigned long long) ; 
 int FUNC3 (unsigned long long) ; 
 int FUNC4 (unsigned long long) ; 
 int FUNC5 (unsigned long long) ; 
 int FUNC6 (unsigned long long) ; 
 int FUNC7 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct _key_ctx *kctx)
{
	kctx->iv_to_auth = FUNC8(FUNC7(6ULL) |
				  FUNC1(1ULL) |
				  FUNC0(5ULL) |
				  FUNC6(14ULL) |
				  FUNC5(0ULL) |
				  FUNC4(14ULL) |
				  FUNC3(16ULL) |
				  FUNC2(16ULL));
}