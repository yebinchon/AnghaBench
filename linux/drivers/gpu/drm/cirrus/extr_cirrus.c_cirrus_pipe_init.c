
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrus_device {int conn; int pipe; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int cirrus_formats ;
 int cirrus_modifiers ;
 int cirrus_pipe_funcs ;
 int drm_simple_display_pipe_init (int *,int *,int *,int ,int ,int ,int *) ;

__attribute__((used)) static int cirrus_pipe_init(struct cirrus_device *cirrus)
{
 return drm_simple_display_pipe_init(&cirrus->dev,
         &cirrus->pipe,
         &cirrus_pipe_funcs,
         cirrus_formats,
         ARRAY_SIZE(cirrus_formats),
         cirrus_modifiers,
         &cirrus->conn);
}
