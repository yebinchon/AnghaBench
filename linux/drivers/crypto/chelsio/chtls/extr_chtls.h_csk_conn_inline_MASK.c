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
struct chtls_sock {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_CONN_INLINE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(const struct chtls_sock *csk)
{
	return FUNC0(CSK_CONN_INLINE, &csk->flags);
}