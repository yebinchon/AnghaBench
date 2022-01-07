
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {void (* complete ) (void*) ;struct applespi_data* context; } ;
struct applespi_data {int spi; } ;


 int spi_async (int ,struct spi_message*) ;

__attribute__((used)) static int applespi_async(struct applespi_data *applespi,
     struct spi_message *message, void (*complete)(void *))
{
 message->complete = complete;
 message->context = applespi;

 return spi_async(applespi->spi, message);
}
