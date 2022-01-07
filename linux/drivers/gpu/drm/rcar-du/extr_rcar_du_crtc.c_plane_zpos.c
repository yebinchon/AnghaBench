
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* state; } ;
struct rcar_du_plane {TYPE_2__ plane; } ;
struct TYPE_3__ {unsigned int normalized_zpos; } ;



__attribute__((used)) static unsigned int plane_zpos(struct rcar_du_plane *plane)
{
 return plane->plane.state->normalized_zpos;
}
