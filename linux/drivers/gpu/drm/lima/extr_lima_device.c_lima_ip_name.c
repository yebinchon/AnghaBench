
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_ip {size_t id; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* lima_ip_desc ;

const char *lima_ip_name(struct lima_ip *ip)
{
 return lima_ip_desc[ip->id].name;
}
