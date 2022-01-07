; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64, i64 }

@AVIVO_D1GRPH_UPDATE = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_UPDATE_LOCK = common dso_local global i32 0, align 4
@AVIVO_D1GRPH_FLIP_CONTROL = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_H_RETRACE_EN = common dso_local global i32 0, align 4
@D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i64 0, align 8
@D1GRPH_SECONDARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@D1GRPH_PRIMARY_SURFACE_ADDRESS = common dso_local global i64 0, align 8
@AVIVO_D1GRPH_SURFACE_UPDATE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Update pending now high. Unlocking vupdate_lock.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_page_flip(%struct.radeon_device* %0, i32 %1, i64 %2, i32 %3) #0 {
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
  %49 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %50 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load i64, i64* @D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @upper_32_bits(i64 %55)
  %57 = call i32 @WREG32(i64 %54, i32 %56)
  %58 = load i64, i64* @D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @upper_32_bits(i64 %59)
  %61 = call i32 @WREG32(i64 %58, i32 %60)
  br label %71

62:                                               ; preds = %46
  %63 = load i64, i64* @D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @upper_32_bits(i64 %64)
  %66 = call i32 @WREG32(i64 %63, i32 %65)
  %67 = load i64, i64* @D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @upper_32_bits(i64 %68)
  %70 = call i32 @WREG32(i64 %67, i32 %69)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i64, i64* @D1GRPH_SECONDARY_SURFACE_ADDRESS, align 8
  %73 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %74 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @WREG32(i64 %76, i32 %78)
  %80 = load i64, i64* @D1GRPH_PRIMARY_SURFACE_ADDRESS, align 8
  %81 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %82 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load i64, i64* %7, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @WREG32(i64 %84, i32 %86)
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %107, %71
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %96 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %97 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = call i32 @RREG32(i64 %99)
  %101 = load i32, i32* @AVIVO_D1GRPH_SURFACE_UPDATE_PENDING, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %110

105:                                              ; preds = %94
  %106 = call i32 @udelay(i32 1)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %88

110:                                              ; preds = %104, %88
  %111 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @AVIVO_D1GRPH_UPDATE_LOCK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i64, i64* @AVIVO_D1GRPH_UPDATE, align 8
  %117 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %118 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @WREG32(i64 %120, i32 %121)
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
