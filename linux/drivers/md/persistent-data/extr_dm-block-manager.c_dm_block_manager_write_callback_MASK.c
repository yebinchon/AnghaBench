#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dm_buffer {int dummy; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {TYPE_1__* validator; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* prepare_for_write ) (TYPE_1__*,struct dm_block*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct buffer_aux* FUNC0 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct dm_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dm_buffer *buf)
{
	struct buffer_aux *aux = FUNC0(buf);
	if (aux->validator) {
		aux->validator->prepare_for_write(aux->validator, (struct dm_block *) buf,
			 FUNC1(FUNC2(buf)));
	}
}