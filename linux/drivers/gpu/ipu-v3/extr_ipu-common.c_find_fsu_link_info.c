
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int chno; } ;
struct TYPE_3__ {int chno; } ;
struct fsu_link_info {TYPE_2__ sink; TYPE_1__ src; } ;


 int ARRAY_SIZE (struct fsu_link_info const*) ;
 struct fsu_link_info const* fsu_link_info ;

__attribute__((used)) static const struct fsu_link_info *find_fsu_link_info(int src, int sink)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(fsu_link_info); i++) {
  if (src == fsu_link_info[i].src.chno &&
      sink == fsu_link_info[i].sink.chno)
   return &fsu_link_info[i];
 }

 return ((void*)0);
}
