
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry_space {int begin; } ;


 int vfree (int ) ;

__attribute__((used)) static void space_exit(struct entry_space *es)
{
 vfree(es->begin);
}
