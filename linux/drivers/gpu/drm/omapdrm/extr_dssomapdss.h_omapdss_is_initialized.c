
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omapdss_get_dss () ;

__attribute__((used)) static inline bool omapdss_is_initialized(void)
{
 return !!omapdss_get_dss();
}
