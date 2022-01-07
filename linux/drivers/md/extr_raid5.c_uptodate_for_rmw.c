
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5dev {int flags; } ;


 int R5_InJournal ;
 int R5_OrigPageUPTDODATE ;
 int R5_UPTODATE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool uptodate_for_rmw(struct r5dev *dev)
{
 return (test_bit(R5_UPTODATE, &dev->flags)) &&
  (!test_bit(R5_InJournal, &dev->flags) ||
   test_bit(R5_OrigPageUPTDODATE, &dev->flags));
}
