
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int buffer_mng_waitq; } ;
struct smscore_buffer_t {int dummy; } ;


 struct smscore_buffer_t* get_entry (struct smscore_device_t*) ;
 int wait_event (int ,struct smscore_buffer_t*) ;

struct smscore_buffer_t *smscore_getbuffer(struct smscore_device_t *coredev)
{
 struct smscore_buffer_t *cb = ((void*)0);

 wait_event(coredev->buffer_mng_waitq, (cb = get_entry(coredev)));

 return cb;
}
