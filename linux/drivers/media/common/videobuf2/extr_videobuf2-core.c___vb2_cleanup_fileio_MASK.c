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
struct vb2_queue {struct vb2_fileio_data* fileio; int /*<<< orphan*/  type; } ;
struct vb2_fileio_data {scalar_t__ count; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_fileio_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_queue*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *q)
{
	struct vb2_fileio_data *fileio = q->fileio;

	if (fileio) {
		FUNC3(q, q->type);
		q->fileio = NULL;
		fileio->count = 0;
		FUNC2(q, fileio->memory, &fileio->count);
		FUNC1(fileio);
		FUNC0(3, "file io emulator closed\n");
	}
	return 0;
}