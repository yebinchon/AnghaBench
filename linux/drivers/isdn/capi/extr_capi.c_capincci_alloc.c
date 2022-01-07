
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct capincci {int list; struct capidev* cdev; int ncci; } ;
struct capidev {int nccis; } ;


 int GFP_KERNEL ;
 int capincci_alloc_minor (struct capidev*,struct capincci*) ;
 struct capincci* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct capincci *capincci_alloc(struct capidev *cdev, u32 ncci)
{
 struct capincci *np;

 np = kzalloc(sizeof(*np), GFP_KERNEL);
 if (!np)
  return ((void*)0);
 np->ncci = ncci;
 np->cdev = cdev;

 capincci_alloc_minor(cdev, np);

 list_add_tail(&np->list, &cdev->nccis);

 return np;
}
