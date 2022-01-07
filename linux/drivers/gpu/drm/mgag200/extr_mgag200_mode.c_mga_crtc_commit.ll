; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_helper_funcs*, %struct.drm_device* }
%struct.drm_crtc_helper_funcs = type { i32 (%struct.drm_crtc.0*, i32)* }
%struct.drm_crtc.0 = type opaque
%struct.drm_device = type { %struct.mga_device* }
%struct.mga_device = type { i64 }

@G200_WB = common dso_local global i64 0, align 8
@G200_EW3 = common dso_local global i64 0, align 8
@G200_SE_A = common dso_local global i64 0, align 8
@G200_SE_B = common dso_local global i64 0, align 8
@MGAREG_SEQ_INDEX = common dso_local global i32 0, align 4
@MGAREG_SEQ_DATA = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mga_crtc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_crtc_commit(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mga_device*, align 8
  %5 = alloca %struct.drm_crtc_helper_funcs*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.mga_device*, %struct.mga_device** %11, align 8
  store %struct.mga_device* %12, %struct.mga_device** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %14, align 8
  store %struct.drm_crtc_helper_funcs* %15, %struct.drm_crtc_helper_funcs** %5, align 8
  %16 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %17 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @G200_WB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %23 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @G200_EW3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %1
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %29 = call i32 @mga_g200wb_commit(%struct.drm_crtc* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %32 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @G200_SE_A, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.mga_device*, %struct.mga_device** %4, align 8
  %38 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @G200_SE_B, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %30
  %43 = call i32 @msleep(i32 50)
  %44 = call i32 @WREG_SEQ(i32 1, i32 0)
  %45 = call i32 @msleep(i32 20)
  %46 = call i32 @WREG_SEQ(i32 0, i32 3)
  br label %57

47:                                               ; preds = %36
  %48 = load i32, i32* @MGAREG_SEQ_INDEX, align 4
  %49 = call i32 @WREG8(i32 %48, i32 1)
  %50 = load i32, i32* @MGAREG_SEQ_DATA, align 4
  %51 = call i32 @RREG8(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, -33
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @WREG_SEQ(i32 1, i32 %54)
  %56 = call i32 @WREG_SEQ(i32 0, i32 3)
  br label %57

57:                                               ; preds = %47, %42
  %58 = load %struct.drm_crtc_helper_funcs*, %struct.drm_crtc_helper_funcs** %5, align 8
  %59 = getelementptr inbounds %struct.drm_crtc_helper_funcs, %struct.drm_crtc_helper_funcs* %58, i32 0, i32 0
  %60 = load i32 (%struct.drm_crtc.0*, i32)*, i32 (%struct.drm_crtc.0*, i32)** %59, align 8
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %62 = bitcast %struct.drm_crtc* %61 to %struct.drm_crtc.0*
  %63 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %64 = call i32 %60(%struct.drm_crtc.0* %62, i32 %63)
  ret void
}

declare dso_local i32 @mga_g200wb_commit(%struct.drm_crtc*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @WREG_SEQ(i32, i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @RREG8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
