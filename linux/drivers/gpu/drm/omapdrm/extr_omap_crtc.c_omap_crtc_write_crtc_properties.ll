; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_write_crtc_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_write_crtc_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i32, i32, i32, i32 }
%struct.omap_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @omap_crtc_write_crtc_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_write_crtc_properties(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.omap_drm_private*, align 8
  %4 = alloca %struct.omap_crtc*, align 8
  %5 = alloca %struct.omap_overlay_manager_info, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.omap_drm_private*, %struct.omap_drm_private** %9, align 8
  store %struct.omap_drm_private* %10, %struct.omap_drm_private** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %11)
  store %struct.omap_crtc* %12, %struct.omap_crtc** %4, align 8
  %13 = call i32 @memset(%struct.omap_overlay_manager_info* %5, i32 0, i32 16)
  %14 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %5, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %19 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, %struct.omap_overlay_manager_info*)*, i32 (i32, i32, %struct.omap_overlay_manager_info*)** %21, align 8
  %23 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %24 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.omap_crtc*, %struct.omap_crtc** %4, align 8
  %27 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %22(i32 %25, i32 %28, %struct.omap_overlay_manager_info* %5)
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @memset(%struct.omap_overlay_manager_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
