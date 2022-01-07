; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64 }

@EVERGREEN_GRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN = common dso_local global i32 0, align 4
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_page_flip(%struct.radeon_device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_crtc*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %13, i64 %15
  %17 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  store %struct.radeon_crtc* %17, %struct.radeon_crtc** %9, align 8
  %18 = load i64, i64* @EVERGREEN_GRPH_FLIP_CONTROL, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @EVERGREEN_GRPH_SURFACE_UPDATE_H_RETRACE_EN, align 4
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = call i32 @WREG32(i64 %22, i32 %29)
  %31 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %32 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %33 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @upper_32_bits(i64 %36)
  %38 = call i32 @WREG32(i64 %35, i32 %37)
  %39 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %40 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %41 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @WREG32(i64 %43, i32 %45)
  %47 = load i64, i64* @EVERGREEN_GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %48 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %49 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @RREG32(i64 %51)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
