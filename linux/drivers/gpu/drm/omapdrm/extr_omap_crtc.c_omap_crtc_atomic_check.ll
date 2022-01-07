; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_plane_state = type { i32, i32 }
%struct.omap_crtc_state = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @omap_crtc_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_crtc_atomic_check(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %9 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %10 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %20 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %13, %2
  %34 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.drm_plane_state* @drm_atomic_get_new_plane_state(i32 %36, i32 %39)
  store %struct.drm_plane_state* %40, %struct.drm_plane_state** %6, align 8
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %42 = icmp ne %struct.drm_plane_state* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %45 = call %struct.omap_crtc_state* @to_omap_crtc_state(%struct.drm_crtc_state* %44)
  store %struct.omap_crtc_state* %45, %struct.omap_crtc_state** %8, align 8
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %47 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %8, align 8
  %50 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %6, align 8
  %52 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %8, align 8
  %55 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %57 = call i32 @omap_crtc_is_manually_updated(%struct.drm_crtc* %56)
  %58 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %8, align 8
  %59 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %43, %33
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.drm_plane_state* @drm_atomic_get_new_plane_state(i32, i32) #1

declare dso_local %struct.omap_crtc_state* @to_omap_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @omap_crtc_is_manually_updated(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
