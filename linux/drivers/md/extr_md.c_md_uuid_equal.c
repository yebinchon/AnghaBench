
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ set_uuid0; scalar_t__ set_uuid1; scalar_t__ set_uuid2; scalar_t__ set_uuid3; } ;
typedef TYPE_1__ mdp_super_t ;



__attribute__((used)) static int md_uuid_equal(mdp_super_t *sb1, mdp_super_t *sb2)
{
 return sb1->set_uuid0 == sb2->set_uuid0 &&
  sb1->set_uuid1 == sb2->set_uuid1 &&
  sb1->set_uuid2 == sb2->set_uuid2 &&
  sb1->set_uuid3 == sb2->set_uuid3;
}
