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
struct nouveau_svm_fault_buffer {int entries; int /*<<< orphan*/  object; int /*<<< orphan*/  notify; scalar_t__* fault; } ;
struct nouveau_svm {struct nouveau_svm_fault_buffer* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_svm*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nouveau_svm *svm, int id)
{
	struct nouveau_svm_fault_buffer *buffer = &svm->buffer[id];
	int i;

	if (buffer->fault) {
		for (i = 0; buffer->fault[i] && i < buffer->entries; i++)
			FUNC0(buffer->fault[i]);
		FUNC1(buffer->fault);
	}

	FUNC2(svm, id);

	FUNC3(&buffer->notify);
	FUNC4(&buffer->object);
}