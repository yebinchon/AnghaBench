; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_cursor_move_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_cursor_move_locked.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32)* @dce_v6_0_cursor_move_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v6_0_cursor_move_locked(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %12)
  store %struct.amdgpu_crtc* %13, %struct.amdgpu_crtc** %7, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %27 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %48 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i64 %46, i64 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %3
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 0, %54
  %56 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %57 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call i32 @min(i32 %55, i64 %59)
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %3
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 0, %65
  %67 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %68 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 1
  %71 = call i32 @min(i32 %66, i64 %70)
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i64, i64* @mmCUR_POSITION, align 8
  %74 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %75 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load i32, i32* %5, align 4
  %79 = shl i32 %78, 16
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @WREG32(i64 %77, i32 %81)
  %83 = load i64, i64* @mmCUR_HOT_SPOT, align 8
  %84 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %85 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @WREG32(i64 %87, i32 %91)
  %93 = load i64, i64* @mmCUR_SIZE, align 8
  %94 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %95 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 1
  %100 = shl i32 %99, 16
  %101 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %102 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = or i32 %100, %104
  %106 = call i32 @WREG32(i64 %97, i32 %105)
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
