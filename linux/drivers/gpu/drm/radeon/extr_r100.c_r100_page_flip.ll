; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64 }

@RADEON_CRTC_OFFSET__OFFSET_LOCK = common dso_local global i32 0, align 4
@RADEON_CRTC_OFFSET = common dso_local global i64 0, align 8
@RADEON_CRTC_OFFSET__GUI_TRIG_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Update pending now high. Unlocking vupdate_lock.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_page_flip(%struct.radeon_device* %0, i32 %1, i64 %2, i32 %3) #0 {
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
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @RADEON_CRTC_OFFSET__OFFSET_LOCK, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* @RADEON_CRTC_OFFSET, align 8
  %25 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %26 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @WREG32(i64 %28, i32 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %50, %4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i64, i64* @RADEON_CRTC_OFFSET, align 8
  %39 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %40 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @RREG32(i64 %42)
  %44 = load i32, i32* @RADEON_CRTC_OFFSET__GUI_TRIG_OFFSET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %53

48:                                               ; preds = %37
  %49 = call i32 @udelay(i32 1)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %31

53:                                               ; preds = %47, %31
  %54 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @RADEON_CRTC_OFFSET__OFFSET_LOCK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i64, i64* @RADEON_CRTC_OFFSET, align 8
  %60 = load %struct.radeon_crtc*, %struct.radeon_crtc** %9, align 8
  %61 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @WREG32(i64 %63, i32 %64)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
