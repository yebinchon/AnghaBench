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
struct vmw_fpriv {int /*<<< orphan*/  tfile; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_fpriv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vmw_fpriv* FUNC2 (struct drm_file*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev,
			 struct drm_file *file_priv)
{
	struct vmw_fpriv *vmw_fp = FUNC2(file_priv);

	FUNC1(&vmw_fp->tfile);
	FUNC0(vmw_fp);
}