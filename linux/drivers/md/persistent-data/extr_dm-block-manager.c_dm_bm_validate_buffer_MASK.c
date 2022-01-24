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
struct dm_buffer {int dummy; } ;
struct dm_block_validator {int (* check ) (struct dm_block_validator*,struct dm_block*,int /*<<< orphan*/ ) ;char* name; } ;
struct dm_block_manager {int /*<<< orphan*/  bufio; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {struct dm_block_validator* validator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dm_block_validator*,struct dm_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dm_block_manager *bm,
				 struct dm_buffer *buf,
				 struct buffer_aux *aux,
				 struct dm_block_validator *v)
{
	if (FUNC4(!aux->validator)) {
		int r;
		if (!v)
			return 0;
		r = v->check(v, (struct dm_block *) buf, FUNC2(bm->bufio));
		if (FUNC4(r)) {
			FUNC0("%s validator check failed for block %llu", v->name,
				    (unsigned long long) FUNC1(buf));
			return r;
		}
		aux->validator = v;
	} else {
		if (FUNC4(aux->validator != v)) {
			FUNC0("validator mismatch (old=%s vs new=%s) for block %llu",
				    aux->validator->name, v ? v->name : "NULL",
				    (unsigned long long) FUNC1(buf));
			return -EINVAL;
		}
	}

	return 0;
}