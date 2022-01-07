
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coresight_device {int dummy; } ;


 int bus_for_each_dev (int *,int *,struct coresight_device*,int ) ;
 int coresight_bustype ;
 int coresight_orphan_match ;

__attribute__((used)) static void coresight_fixup_orphan_conns(struct coresight_device *csdev)
{




 bus_for_each_dev(&coresight_bustype, ((void*)0),
    csdev, coresight_orphan_match);
}
