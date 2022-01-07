; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_vblank_crtc*, i32, i32 }
%struct.drm_vblank_crtc = type { i32, i64, i32 }

@DRM_TIMESTAMP_MAXRETRIES = common dso_local global i32 0, align 4
@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_VBL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Cannot compute missed vblanks without frame duration\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"missed %d vblanks in %lld ns, frame duration=%d ns, hw_diff=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_vblank_restore(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_vblank_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 1, i64* %10, align 8
  %12 = load i32, i32* @DRM_TIMESTAMP_MAXRETRIES, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 3
  %25 = call i32 @assert_spin_locked(i32* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 2
  %28 = call i32 @assert_spin_locked(i32* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 1
  %31 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %31, i64 %33
  store %struct.drm_vblank_crtc* %34, %struct.drm_vblank_crtc** %6, align 8
  %35 = load i32, i32* @drm_debug, align 4
  %36 = load i32, i32* @DRM_UT_VBL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %22
  %40 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %41 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %22
  %46 = phi i1 [ false, %22 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ONCE(i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %50 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %69, %45
  %53 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @__get_vblank_counter(%struct.drm_device* %53, i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @drm_get_last_vbltimestamp(%struct.drm_device* %56, i32 %57, i32* %5, i32 0)
  br label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @__get_vblank_counter(%struct.drm_device* %61, i32 %62)
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  %68 = icmp sgt i32 %67, 0
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  br i1 %70, label %52, label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %74 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ktime_sub(i32 %72, i32 %75)
  %77 = call i32 @ktime_to_ns(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @DIV_ROUND_CLOSEST_ULL(i32 %81, i32 %82)
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %90 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = call i32 @DRM_DEBUG_VBL(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %85, i32 %86, i32 %87, i64 %92)
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @store_vblank(%struct.drm_device* %94, i32 %95, i64 %96, i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %84, %21
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @__get_vblank_counter(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_get_last_vbltimestamp(%struct.drm_device*, i32, i32*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_VBL(i8*, i64, i32, i32, i64) #1

declare dso_local i32 @store_vblank(%struct.drm_device*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
