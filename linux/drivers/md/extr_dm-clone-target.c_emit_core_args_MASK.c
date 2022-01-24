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
struct clone {int /*<<< orphan*/  hydration_batch_size; int /*<<< orphan*/  hydration_threshold; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clone *clone, char *result,
			   unsigned int maxlen, ssize_t *sz_ptr)
{
	ssize_t sz = *sz_ptr;
	unsigned int count = 4;

	FUNC0("%u hydration_threshold %u hydration_batch_size %u ", count,
	       FUNC1(clone->hydration_threshold),
	       FUNC1(clone->hydration_batch_size));

	*sz_ptr = sz;
}