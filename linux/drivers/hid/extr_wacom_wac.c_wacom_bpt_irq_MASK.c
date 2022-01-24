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
struct wacom_features {scalar_t__ type; int device_type; } ;
struct wacom_wac {struct wacom_features features; } ;

/* Variables and functions */
 scalar_t__ INTUOSHT2 ; 
 int WACOM_DEVICETYPE_PEN ; 
 size_t WACOM_PKGLEN_BBFUN ; 
 size_t WACOM_PKGLEN_BBPEN ; 
 size_t WACOM_PKGLEN_BBTOUCH ; 
 size_t WACOM_PKGLEN_BBTOUCH3 ; 
 int FUNC0 (struct wacom_wac*) ; 
 int FUNC1 (struct wacom_wac*) ; 
 int FUNC2 (struct wacom_wac*) ; 
 int FUNC3 (struct wacom_wac*) ; 

__attribute__((used)) static int FUNC4(struct wacom_wac *wacom, size_t len)
{
	struct wacom_features *features = &wacom->features;

	if ((features->type == INTUOSHT2) &&
	    (features->device_type & WACOM_DEVICETYPE_PEN))
		return FUNC3(wacom);
	else if (len == WACOM_PKGLEN_BBTOUCH)
		return FUNC2(wacom);
	else if (len == WACOM_PKGLEN_BBTOUCH3)
		return FUNC0(wacom);
	else if (len == WACOM_PKGLEN_BBFUN || len == WACOM_PKGLEN_BBPEN)
		return FUNC1(wacom);

	return 0;
}