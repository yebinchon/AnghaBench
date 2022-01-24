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
struct scatterlist {scalar_t__ length; } ;
struct hifn_cipher_walk {int num; struct scatterlist* cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC2(struct hifn_cipher_walk *w)
{
	int i;

	for (i = 0; i < w->num; ++i) {
		struct scatterlist *s = &w->cache[i];

		FUNC0(FUNC1(s));

		s->length = 0;
	}

	w->num = 0;
}