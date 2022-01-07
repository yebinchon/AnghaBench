
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int phys; } ;


 int strncmp (int,int,int) ;
 int strrchr (int,char) ;

bool hid_compare_device_paths(struct hid_device *hdev_a,
         struct hid_device *hdev_b, char separator)
{
 int n1 = strrchr(hdev_a->phys, separator) - hdev_a->phys;
 int n2 = strrchr(hdev_b->phys, separator) - hdev_b->phys;

 if (n1 != n2 || n1 <= 0 || n2 <= 0)
  return 0;

 return !strncmp(hdev_a->phys, hdev_b->phys, n1);
}
