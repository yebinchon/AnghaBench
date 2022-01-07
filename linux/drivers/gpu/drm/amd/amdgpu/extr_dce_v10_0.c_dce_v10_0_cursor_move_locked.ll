; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_cursor_move_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_cursor_move_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i32, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"x %d y %d c->x %d c->y %d\0A\00", align 1
@mmCUR_POSITION = common dso_local global i64 0, align 8
@mmCUR_HOT_SPOT = common dso_local global i64 0, align 8
@mmCUR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32)* @dce_v10_0_cursor_move_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_cursor_move_locked(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %11)
  store %struct.amdgpu_crtc* %12, %struct.amdgpu_crtc** %7, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i64 %42, i64 %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 0, %50
  %52 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %53 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @min(i32 %51, i64 %55)
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %3
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 0, %61
  %63 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @min(i32 %62, i64 %66)
  store i32 %67, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %60, %57
  %69 = load i64, i64* @mmCUR_POSITION, align 8
  %70 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %71 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @WREG32(i64 %73, i32 %77)
  %79 = load i64, i64* @mmCUR_HOT_SPOT, align 8
  %80 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %81 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @WREG32(i64 %83, i32 %87)
  %89 = load i64, i64* @mmCUR_SIZE, align 8
  %90 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %91 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %95 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = shl i32 %97, 16
  %99 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %100 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = or i32 %98, %102
  %104 = call i32 @WREG32(i64 %93, i32 %103)
  ret i32 0
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
