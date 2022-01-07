
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {size_t mode; } ;
typedef int ssize_t ;


 char** hgpk_mode_names ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t attr_show_mode(struct psmouse *psmouse, void *data, char *buf)
{
 struct hgpk_data *priv = psmouse->private;

 return sprintf(buf, "%s\n", hgpk_mode_names[priv->mode]);
}
