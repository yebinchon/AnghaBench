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
struct workqueue_struct {int dummy; } ;
struct closure {int dummy; } ;
typedef  int /*<<< orphan*/  closure_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct closure*,struct closure*) ; 
 int /*<<< orphan*/  FUNC1 (struct closure*,int /*<<< orphan*/ ,struct workqueue_struct*) ; 

__attribute__((used)) static inline void FUNC2(struct closure *cl, closure_fn fn,
				struct workqueue_struct *wq,
				struct closure *parent)
{
	FUNC0(cl, parent);
	FUNC1(cl, fn, wq);
}