
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_format_name_buf {int dummy; } ;
typedef int name ;


 char* drm_get_format_name (int ,struct drm_format_name_buf*) ;
 int snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static inline const char *komeda_get_format_name(u32 fourcc, u64 modifier)
{
 struct drm_format_name_buf buf;
 static char name[64];

 snprintf(name, sizeof(name), "%s with modifier: 0x%llx.",
   drm_get_format_name(fourcc, &buf), modifier);

 return name;
}
