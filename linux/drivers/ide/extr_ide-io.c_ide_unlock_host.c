
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_host {int host_flags; int host_busy; int (* release_lock ) () ;} ;


 int IDE_HFLAG_SERIALIZE ;
 int IDE_HOST_BUSY ;
 int clear_bit_unlock (int ,int *) ;
 int stub1 () ;

__attribute__((used)) static inline void ide_unlock_host(struct ide_host *host)
{
 if (host->host_flags & IDE_HFLAG_SERIALIZE) {
  if (host->release_lock)
   host->release_lock();
  clear_bit_unlock(IDE_HOST_BUSY, &host->host_busy);
 }
}
