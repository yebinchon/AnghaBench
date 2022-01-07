
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int ver; } ;



__attribute__((used)) static inline bool
v3d_has_csd(struct v3d_dev *v3d)
{
 return v3d->ver >= 41;
}
