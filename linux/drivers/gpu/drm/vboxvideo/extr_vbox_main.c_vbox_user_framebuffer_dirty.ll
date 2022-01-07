; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_user_framebuffer_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_main.c_vbox_user_framebuffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_clip_rect = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_file*, i32, i32, %struct.drm_clip_rect*, i32)* @vbox_user_framebuffer_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbox_user_framebuffer_dirty(%struct.drm_framebuffer* %0, %struct.drm_file* %1, i32 %2, i32 %3, %struct.drm_clip_rect* %4, i32 %5) #0 {
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_clip_rect*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.drm_clip_rect* %4, %struct.drm_clip_rect** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %14 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %15 = load i32, i32* %12, align 4
  %16 = call i32 @vbox_framebuffer_dirty_rectangles(%struct.drm_framebuffer* %13, %struct.drm_clip_rect* %14, i32 %15)
  ret i32 0
}

declare dso_local i32 @vbox_framebuffer_dirty_rectangles(%struct.drm_framebuffer*, %struct.drm_clip_rect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
