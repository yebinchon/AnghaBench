; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64 }

@AVIVO_D1GRPH_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_H_RETRACE_EN = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Update pending now high. Unlocking vupdate_lock.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs600_page_flip(%struct.radeon_device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %15, i64 %17
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %18, align 8
  store %struct.radeon_crtc* %19, %struct.radeon_crtc** %9, align 8
  %20 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %21 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %22 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i32 @RREG32(i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %30 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @WREG32(i64 %33, i32 %34)
  %36 = load i64, i64* @AVIVO_D1GRPH_FLIP_CONTROL, align 8
  %37 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %38 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_H_RETRACE_EN, align 4
  br label %46

45:                                               ; preds = %4
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = call i32 @WREG32(i64 %40, i32 %47)
  %49 = load i64, i64* @AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %50 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %51 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @WREG32(i64 %53, i32 %55)
  %57 = load i64, i64* @AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %58 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %59 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @WREG32(i64 %61, i32 %63)
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %84, %46
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %73 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %74 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = call i32 @RREG32(i64 %76)
  %78 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %87

82:                                               ; preds = %71
  %83 = call i32 @udelay(i32 1)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %65

87:                                               ; preds = %81, %65
  %88 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %94 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %95 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @WREG32(i64 %97, i32 %98)
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
