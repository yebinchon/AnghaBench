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
struct iio_mount_matrix {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device const*,char*) ; 
 struct iio_mount_matrix iio_mount_idmatrix ; 

__attribute__((used)) static int FUNC1(const struct device *dev,
				    struct iio_mount_matrix *matrix)
{
	*matrix = iio_mount_idmatrix;
	FUNC0(dev, "mounting matrix not found: using identity...\n");
	return 0;
}