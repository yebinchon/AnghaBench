; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.mtk_drm_crtc = type { i32 }
%struct.drm_plane = type { i32 }

@mtk_crtc_funcs = common dso_local global i32 0, align 4
@mtk_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.mtk_drm_crtc*, %struct.drm_plane*, %struct.drm_plane*, i32)* @mtk_drm_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_drm_crtc_init(%struct.drm_device* %0, %struct.mtk_drm_crtc* %1, %struct.drm_plane* %2, %struct.drm_plane* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.mtk_drm_crtc*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.mtk_drm_crtc* %1, %struct.mtk_drm_crtc** %8, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %9, align 8
  store %struct.drm_plane* %3, %struct.drm_plane** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %8, align 8
  %15 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %18 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %13, i32* %15, %struct.drm_plane* %16, %struct.drm_plane* %17, i32* @mtk_crtc_funcs, i32* null)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %26

22:                                               ; preds = %5
  %23 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %8, align 8
  %24 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %23, i32 0, i32 0
  %25 = call i32 @drm_crtc_helper_add(i32* %24, i32* @mtk_crtc_helper_funcs)
  store i32 0, i32* %6, align 4
  br label %31

26:                                               ; preds = %21
  %27 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %8, align 8
  %28 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %27, i32 0, i32 0
  %29 = call i32 @drm_crtc_cleanup(i32* %28)
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, i32*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_crtc_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
