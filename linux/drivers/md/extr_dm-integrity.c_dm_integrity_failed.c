
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {int failed; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static int dm_integrity_failed(struct dm_integrity_c *ic)
{
 return READ_ONCE(ic->failed);
}
