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
struct hid_device {int dummy; } ;
struct elo_priv {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct elo_priv* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct elo_priv*) ; 

__attribute__((used)) static void FUNC4(struct hid_device *hdev)
{
	struct elo_priv *priv = FUNC1(hdev);

	FUNC2(hdev);
	FUNC0(&priv->work);
	FUNC3(priv);
}