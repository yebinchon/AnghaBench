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
struct seqbuf {char* buf; int pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seqbuf*) ; 
 int FUNC1 (struct seqbuf*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seqbuf *seqbuf, const char **str)
{
	*str = seqbuf->buf + seqbuf->pos;
	seqbuf->pos += FUNC2(*str, FUNC0(seqbuf));
	seqbuf->pos++;
	return FUNC1(seqbuf);
}