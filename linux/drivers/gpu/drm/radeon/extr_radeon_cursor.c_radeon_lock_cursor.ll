; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_lock_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_lock_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i64 }

@EVERGREEN_CUR_UPDATE = common dso_local global i64 0, align 8
@EVERGREEN_CURSOR_UPDATE_LOCK = common dso_local global i32 0, align 4
@AVIVO_D1CUR_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1CURSOR_UPDATE_LOCK = common dso_local global i32 0, align 4
@RADEON_CUR_OFFSET = common dso_local global i64 0, align 8
@RADEON_CUR_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @radeon_lock_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_lock_cursor(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %13)
  store %struct.radeon_crtc* %14, %struct.radeon_crtc** %6, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %16 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load i64, i64* @EVERGREEN_CUR_UPDATE, align 8
  %20 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @RREG32(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @EVERGREEN_CURSOR_UPDATE_LOCK, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %36

31:                                               ; preds = %18
  %32 = load i32, i32* @EVERGREEN_CURSOR_UPDATE_LOCK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i64, i64* @EVERGREEN_CUR_UPDATE, align 8
  %38 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @WREG32(i64 %41, i32 %42)
  br label %101

44:                                               ; preds = %2
  %45 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %46 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i64, i64* @AVIVO_D1CUR_UPDATE, align 8
  %50 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @RREG32(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @AVIVO_D1CURSOR_UPDATE_LOCK, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %66

61:                                               ; preds = %48
  %62 = load i32, i32* @AVIVO_D1CURSOR_UPDATE_LOCK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i64, i64* @AVIVO_D1CUR_UPDATE, align 8
  %68 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %69 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @WREG32(i64 %71, i32 %72)
  br label %100

74:                                               ; preds = %44
  %75 = load i64, i64* @RADEON_CUR_OFFSET, align 8
  %76 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = call i32 @RREG32(i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* @RADEON_CUR_LOCK, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %92

87:                                               ; preds = %74
  %88 = load i32, i32* @RADEON_CUR_LOCK, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i64, i64* @RADEON_CUR_OFFSET, align 8
  %94 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @WREG32(i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %66
  br label %101

101:                                              ; preds = %100, %36
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
