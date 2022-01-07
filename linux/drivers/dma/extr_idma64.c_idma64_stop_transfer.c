
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ chan; } ;
struct idma64_chan {TYPE_2__ vchan; } ;
struct idma64 {int dummy; } ;


 int idma64_chan_stop (struct idma64*,struct idma64_chan*) ;
 struct idma64* to_idma64 (int ) ;

__attribute__((used)) static void idma64_stop_transfer(struct idma64_chan *idma64c)
{
 struct idma64 *idma64 = to_idma64(idma64c->vchan.chan.device);

 idma64_chan_stop(idma64, idma64c);
}
