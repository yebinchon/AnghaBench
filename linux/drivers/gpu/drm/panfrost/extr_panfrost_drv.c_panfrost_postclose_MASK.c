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
struct panfrost_file_priv {int /*<<< orphan*/  mm; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct panfrost_file_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct panfrost_file_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct panfrost_file_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct panfrost_file_priv*) ; 

__attribute__((used)) static void
FUNC5(struct drm_device *dev, struct drm_file *file)
{
	struct panfrost_file_priv *panfrost_priv = file->driver_priv;

	FUNC4(panfrost_priv);
	FUNC2(panfrost_priv);

	FUNC3(panfrost_priv);
	FUNC0(&panfrost_priv->mm);
	FUNC1(panfrost_priv);
}