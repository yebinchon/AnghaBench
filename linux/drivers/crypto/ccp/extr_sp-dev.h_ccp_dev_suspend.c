
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int dummy; } ;
typedef int pm_message_t ;



__attribute__((used)) static inline int ccp_dev_suspend(struct sp_device *sp, pm_message_t state)
{
 return 0;
}
