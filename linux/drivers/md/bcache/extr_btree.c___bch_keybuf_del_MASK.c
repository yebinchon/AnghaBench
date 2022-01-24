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
struct keybuf_key {int /*<<< orphan*/  node; } ;
struct keybuf {int /*<<< orphan*/  freelist; int /*<<< orphan*/  keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct keybuf_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct keybuf *buf, struct keybuf_key *w)
{
	FUNC1(&w->node, &buf->keys);
	FUNC0(&buf->freelist, w);
}