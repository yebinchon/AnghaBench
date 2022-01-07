
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int x_resolution; int x_phy; int x_max; int y_phy; int y_max; int y_resolution; } ;



__attribute__((used)) static void wacom_set_default_phy(struct wacom_features *features)
{
 if (features->x_resolution) {
  features->x_phy = (features->x_max * 100) /
     features->x_resolution;
  features->y_phy = (features->y_max * 100) /
     features->y_resolution;
 }
}
