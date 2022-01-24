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
struct intel_uc_fw {int /*<<< orphan*/  rsa_size; int /*<<< orphan*/  ucode_size; int /*<<< orphan*/  minor_ver_found; int /*<<< orphan*/  major_ver_found; int /*<<< orphan*/  minor_ver_wanted; int /*<<< orphan*/  major_ver_wanted; int /*<<< orphan*/  status; int /*<<< orphan*/  path; int /*<<< orphan*/  type; } ;
struct drm_printer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const struct intel_uc_fw *uc_fw, struct drm_printer *p)
{
	FUNC0(p, "%s firmware: %s\n",
		   FUNC2(uc_fw->type), uc_fw->path);
	FUNC0(p, "\tstatus: %s\n",
		   FUNC1(uc_fw->status));
	FUNC0(p, "\tversion: wanted %u.%u, found %u.%u\n",
		   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted,
		   uc_fw->major_ver_found, uc_fw->minor_ver_found);
	FUNC0(p, "\tuCode: %u bytes\n", uc_fw->ucode_size);
	FUNC0(p, "\tRSA: %u bytes\n", uc_fw->rsa_size);
}