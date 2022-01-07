
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xen_drm_front_info {int dbuf_list; } ;
struct xen_drm_front_dbuf {int list; int dbuf_cookie; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static void dbuf_add_to_list(struct xen_drm_front_info *front_info,
        struct xen_drm_front_dbuf *dbuf, u64 dbuf_cookie)
{
 dbuf->dbuf_cookie = dbuf_cookie;
 list_add(&dbuf->list, &front_info->dbuf_list);
}
