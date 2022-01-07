
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int powered; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t hgpk_show_powered(struct psmouse *psmouse, void *data, char *buf)
{
 struct hgpk_data *priv = psmouse->private;

 return sprintf(buf, "%d\n", priv->powered);
}
