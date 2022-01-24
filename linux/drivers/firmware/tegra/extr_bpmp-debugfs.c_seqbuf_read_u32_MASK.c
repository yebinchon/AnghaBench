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
typedef  int /*<<< orphan*/  uint32_t ;
struct seqbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct seqbuf*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct seqbuf *seqbuf, uint32_t *v)
{
	int err;

	err = FUNC1(seqbuf, v, 4);
	*v = FUNC0(*v);
	return err;
}