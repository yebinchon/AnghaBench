
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keep_alive_rcvd; } ;
struct efa_dev {TYPE_1__ stats; } ;
struct efa_admin_aenq_entry {int dummy; } ;


 int atomic64_inc (int *) ;

__attribute__((used)) static void efa_keep_alive(void *data, struct efa_admin_aenq_entry *aenq_e)
{
 struct efa_dev *dev = (struct efa_dev *)data;

 atomic64_inc(&dev->stats.keep_alive_rcvd);
}
