
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int desc_types; int exec_units; } ;
struct device {int dummy; } ;
typedef int __be32 ;


 int DESC_TYPE (int ) ;
 int PRIMARY_EU (int ) ;
 int SECONDARY_EU (int ) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int hw_supports(struct device *dev, __be32 desc_hdr_template)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 int ret;

 ret = (1 << DESC_TYPE(desc_hdr_template) & priv->desc_types) &&
       (1 << PRIMARY_EU(desc_hdr_template) & priv->exec_units);

 if (SECONDARY_EU(desc_hdr_template))
  ret = ret && (1 << SECONDARY_EU(desc_hdr_template)
                & priv->exec_units);

 return ret;
}
