
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_connector {char* name; } ;


 int ENOENT ;
 int ENOMEM ;
 struct edid* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 char* edid_firmware ;
 struct edid* edid_load (struct drm_connector*,char*,char const*) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strsep (char**,char*) ;

struct edid *drm_load_edid_firmware(struct drm_connector *connector)
{
 const char *connector_name = connector->name;
 char *edidname, *last, *colon, *fwstr, *edidstr, *fallback = ((void*)0);
 struct edid *edid;

 if (edid_firmware[0] == '\0')
  return ERR_PTR(-ENOENT);
 fwstr = kstrdup(edid_firmware, GFP_KERNEL);
 if (!fwstr)
  return ERR_PTR(-ENOMEM);
 edidstr = fwstr;

 while ((edidname = strsep(&edidstr, ","))) {
  colon = strchr(edidname, ':');
  if (colon != ((void*)0)) {
   if (strncmp(connector_name, edidname, colon - edidname))
    continue;
   edidname = colon + 1;
   break;
  }

  if (*edidname != '\0')
   fallback = edidname;
 }

 if (!edidname) {
  if (!fallback) {
   kfree(fwstr);
   return ERR_PTR(-ENOENT);
  }
  edidname = fallback;
 }

 last = edidname + strlen(edidname) - 1;
 if (*last == '\n')
  *last = '\0';

 edid = edid_load(connector, edidname, connector_name);
 kfree(fwstr);

 return edid;
}
