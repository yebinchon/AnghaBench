
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_usages {scalar_t__* contactid; } ;
struct mt_application {scalar_t__ num_received; } ;



__attribute__((used)) static int cypress_compute_slot(struct mt_application *application,
    struct mt_usages *slot)
{
 if (*slot->contactid != 0 || application->num_received == 0)
  return *slot->contactid;
 else
  return -1;
}
