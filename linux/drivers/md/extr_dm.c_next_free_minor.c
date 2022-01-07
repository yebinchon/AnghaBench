
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int MINORBITS ;
 int MINOR_ALLOCED ;
 int _minor_idr ;
 int _minor_lock ;
 int idr_alloc (int *,int ,int ,int,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int next_free_minor(int *minor)
{
 int r;

 idr_preload(GFP_KERNEL);
 spin_lock(&_minor_lock);

 r = idr_alloc(&_minor_idr, MINOR_ALLOCED, 0, 1 << MINORBITS, GFP_NOWAIT);

 spin_unlock(&_minor_lock);
 idr_preload_end();
 if (r < 0)
  return r;
 *minor = r;
 return 0;
}
