; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32, i32, i64, i64, i64, i64, i32, %struct.drm_crtc*, %struct.drm_framebuffer* }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"scale not support\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"crtc_x/y of drm_plane state is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"visible portion of plane is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @hibmc_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hibmc_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %11, i32 0, i32 8
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %13, %struct.drm_framebuffer** %6, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 7
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %16, %struct.drm_crtc** %7, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 16
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 16
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %28 = icmp ne %struct.drm_crtc* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %31 = icmp ne %struct.drm_framebuffer* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %106

33:                                               ; preds = %29
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %38 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %36, %struct.drm_crtc* %37)
  store %struct.drm_crtc_state* %38, %struct.drm_crtc_state** %8, align 8
  %39 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %40 = call i64 @IS_ERR(%struct.drm_crtc_state* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %44 = call i32 @PTR_ERR(%struct.drm_crtc_state* %43)
  store i32 %44, i32* %3, align 4
  br label %106

45:                                               ; preds = %33
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %48 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %45
  %58 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %106

61:                                               ; preds = %51
  %62 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %63 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %68 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66, %61
  %72 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %106

75:                                               ; preds = %66
  %76 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %77 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %80 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %84 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %82, %86
  br i1 %87, label %101, label %88

88:                                               ; preds = %75
  %89 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %90 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %93 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %97 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %95, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %88, %75
  %102 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %101, %71, %57, %42, %32
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
