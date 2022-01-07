; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_lut_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_lut_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_crtc = type { i32, i32*, i32*, i32* }

@SCALER_GAMADDR = common dso_local global i32 0, align 4
@SCALER_GAMADDR_AUTOINC = common dso_local global i32 0, align 4
@SCALER_GAMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @vc4_crtc_lut_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_lut_load(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_crtc*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %10)
  store %struct.vc4_dev* %11, %struct.vc4_dev** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %12)
  store %struct.vc4_crtc* %13, %struct.vc4_crtc** %5, align 8
  %14 = load i32, i32* @SCALER_GAMADDR, align 4
  %15 = load i32, i32* @SCALER_GAMADDR_AUTOINC, align 4
  %16 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 3
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %21 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = or i32 %15, %23
  %25 = call i32 @HVS_WRITE(i32 %14, i32 %24)
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %42, %1
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load i32, i32* @SCALER_GAMDATA, align 4
  %35 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %36 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @HVS_WRITE(i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %26

45:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load i32, i32* @SCALER_GAMDATA, align 4
  %55 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %56 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @HVS_WRITE(i32 %54, i32 %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %46

65:                                               ; preds = %46
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %69 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load i32, i32* @SCALER_GAMDATA, align 4
  %75 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %76 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @HVS_WRITE(i32 %74, i32 %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %66

85:                                               ; preds = %66
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @HVS_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
