
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ipoib_dev_priv {scalar_t__ pkey_index; int flags; int dev; } ;


 int IPOIB_PKEY_ASSIGNED ;
 int ipoib_pkey_dev_check_presence (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int update_child_pkey(struct ipoib_dev_priv *priv)
{
 u16 old_index = priv->pkey_index;

 priv->pkey_index = 0;
 ipoib_pkey_dev_check_presence(priv->dev);

 if (test_bit(IPOIB_PKEY_ASSIGNED, &priv->flags) &&
     (old_index == priv->pkey_index))
  return 1;
 return 0;
}
