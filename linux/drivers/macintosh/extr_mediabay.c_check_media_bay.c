
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int content_id; scalar_t__ state; } ;
struct macio_dev {int dummy; } ;


 int MB_FD ;
 int MB_FD1 ;
 int MB_NO ;
 struct media_bay_info* macio_get_drvdata (struct macio_dev*) ;
 scalar_t__ mb_up ;

int check_media_bay(struct macio_dev *baydev)
{
 struct media_bay_info* bay;
 int id;

 if (baydev == ((void*)0))
  return MB_NO;






 bay = macio_get_drvdata(baydev);
 if (bay == ((void*)0))
  return MB_NO;
 id = bay->content_id;
 if (bay->state != mb_up)
  return MB_NO;
 if (id == MB_FD1)
  return MB_FD;
 return id;
}
