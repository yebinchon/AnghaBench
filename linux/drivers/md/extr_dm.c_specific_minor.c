
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int MINORBITS ;
 int MINOR_ALLOCED ;
 int _minor_idr ;
 int _minor_lock ;
 int idr_alloc (int *,int ,int,int,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int specific_minor(int minor)
{
 int r;

 if (minor >= (1 << MINORBITS))
  return -EINVAL;

 idr_preload(GFP_KERNEL);
 spin_lock(&_minor_lock);

 r = idr_alloc(&_minor_idr, MINOR_ALLOCED, minor, minor + 1, GFP_NOWAIT);

 spin_unlock(&_minor_lock);
 idr_preload_end();
 if (r < 0)
  return r == -ENOSPC ? -EBUSY : r;
 return 0;
}
