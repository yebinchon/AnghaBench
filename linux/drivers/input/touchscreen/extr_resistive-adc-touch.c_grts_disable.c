
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iio_channel_release_all_cb (void*) ;

__attribute__((used)) static void grts_disable(void *data)
{
 iio_channel_release_all_cb(data);
}
