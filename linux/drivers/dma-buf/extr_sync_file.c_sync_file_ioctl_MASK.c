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
struct sync_file {int dummy; } ;
struct file {struct sync_file* private_data; } ;

/* Variables and functions */
 long ENOTTY ; 
#define  SYNC_IOC_FILE_INFO 129 
#define  SYNC_IOC_MERGE 128 
 long FUNC0 (struct sync_file*,unsigned long) ; 
 long FUNC1 (struct sync_file*,unsigned long) ; 

__attribute__((used)) static long FUNC2(struct file *file, unsigned int cmd,
			    unsigned long arg)
{
	struct sync_file *sync_file = file->private_data;

	switch (cmd) {
	case SYNC_IOC_MERGE:
		return FUNC1(sync_file, arg);

	case SYNC_IOC_FILE_INFO:
		return FUNC0(sync_file, arg);

	default:
		return -ENOTTY;
	}
}