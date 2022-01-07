
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int pio_busy; int wait_pio; } ;


 int HZ ;
 int atomic_read (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static inline void iowait_pio_drain(struct iowait *wait)
{
 wait_event_timeout(wait->wait_pio,
      !atomic_read(&wait->pio_busy),
      HZ);
}
