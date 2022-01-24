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
struct cache {int /*<<< orphan*/  heap; } ;
struct bucket {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bucket*) ; 
 struct bucket* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC2(struct cache *ca)
{
	struct bucket *b;

	return (b = FUNC1(&ca->heap)) ? FUNC0(b) : 0;
}