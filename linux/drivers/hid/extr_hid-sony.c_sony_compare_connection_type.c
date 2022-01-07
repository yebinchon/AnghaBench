
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {int quirks; } ;


 int SONY_BT_DEVICE ;

__attribute__((used)) static inline int sony_compare_connection_type(struct sony_sc *sc0,
      struct sony_sc *sc1)
{
 const int sc0_not_bt = !(sc0->quirks & SONY_BT_DEVICE);
 const int sc1_not_bt = !(sc1->quirks & SONY_BT_DEVICE);

 return sc0_not_bt == sc1_not_bt;
}
