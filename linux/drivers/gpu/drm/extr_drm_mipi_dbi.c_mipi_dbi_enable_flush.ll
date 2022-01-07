; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_enable_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_enable_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dbi_dev = type { i32, i32, i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipi_dbi_enable_flush(%struct.mipi_dbi_dev* %0, %struct.drm_crtc_state* %1, %struct.drm_plane_state* %2) #0 {
  %4 = alloca %struct.mipi_dbi_dev*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_rect, align 4
  %9 = alloca i32, align 4
  store %struct.mipi_dbi_dev* %0, %struct.mipi_dbi_dev** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %6, align 8
  %10 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %10, i32 0, i32 0
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %7, align 8
  %13 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 0
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %15 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 2
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %8, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %24 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %23, i32 0, i32 2
  %25 = call i32 @drm_dev_enter(i32* %24, i32* %9)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %39

28:                                               ; preds = %3
  %29 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %32 = call i32 @mipi_dbi_fb_dirty(%struct.drm_framebuffer* %31, %struct.drm_rect* %8)
  %33 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %34 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @backlight_enable(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @drm_dev_exit(i32 %37)
  br label %39

39:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @drm_dev_enter(i32*, i32*) #1

declare dso_local i32 @mipi_dbi_fb_dirty(%struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @backlight_enable(i32) #1

declare dso_local i32 @drm_dev_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
