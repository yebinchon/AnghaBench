
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct dm_rq_target_io* end_io_data; } ;
struct dm_rq_target_io {int orig; } ;
typedef int blk_status_t ;


 int dm_complete_request (int ,int ) ;

__attribute__((used)) static void end_clone_request(struct request *clone, blk_status_t error)
{
 struct dm_rq_target_io *tio = clone->end_io_data;

 dm_complete_request(tio->orig, error);
}
