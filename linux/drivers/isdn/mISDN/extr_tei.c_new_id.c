
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct manager {int nextid; } ;


 int GROUP_TEI ;
 int TEI_SAPI ;

__attribute__((used)) static u_int
new_id(struct manager *mgr)
{
 u_int id;

 id = mgr->nextid++;
 if (id == 0x7fff)
  mgr->nextid = 1;
 id <<= 16;
 id |= GROUP_TEI << 8;
 id |= TEI_SAPI;
 return id;
}
