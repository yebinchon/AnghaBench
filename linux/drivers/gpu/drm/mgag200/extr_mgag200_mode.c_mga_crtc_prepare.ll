; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.mga_device* }
%struct.mga_device = type { i64 }

@MGAREG_CRTC_INDEX = common dso_local global i32 0, align 4
@MGAREG_CRTC_DATA = common dso_local global i32 0, align 4
@G200_SE_A = common dso_local global i64 0, align 8
@G200_SE_B = common dso_local global i64 0, align 8
@MGAREG_SEQ_INDEX = common dso_local global i32 0, align 4
@MGAREG_SEQ_DATA = common dso_local global i32 0, align 4
@G200_WB = common dso_local global i64 0, align 8
@G200_EW3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mga_crtc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_crtc_prepare(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mga_device*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.mga_device*, %struct.mga_device** %10, align 8
  store %struct.mga_device* %11, %struct.mga_device** %4, align 8
  %12 = load i32, i32* @MGAREG_CRTC_INDEX, align 4
  %13 = call i32 @WREG8(i32 %12, i32 17)
  %14 = load i32, i32* @MGAREG_CRTC_DATA, align 4
  %15 = call i32 @RREG8(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, 128
  %18 = call i32 @WREG_CRT(i32 17, i32 %17)
  %19 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %20 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @G200_SE_A, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %26 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @G200_SE_B, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %1
  %31 = call i32 @WREG_SEQ(i32 0, i32 1)
  %32 = call i32 @msleep(i32 50)
  %33 = call i32 @WREG_SEQ(i32 1, i32 32)
  %34 = call i32 @msleep(i32 20)
  br label %44

35:                                               ; preds = %24
  %36 = load i32, i32* @MGAREG_SEQ_INDEX, align 4
  %37 = call i32 @WREG8(i32 %36, i32 1)
  %38 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %39 = call i32 @RREG8(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = call i32 @WREG_SEQ(i32 0, i32 1)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, 32
  %43 = call i32 @WREG_SEQ(i32 1, i32 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %46 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @G200_WB, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %52 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @G200_EW3, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %44
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %58 = call i32 @mga_g200wb_prepare(%struct.drm_crtc* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = call i32 @WREG_CRT(i32 17, i32 0)
  ret void
}

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @WREG_CRT(i32, i32) #1

declare dso_local i32 @WREG_SEQ(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mga_g200wb_prepare(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
