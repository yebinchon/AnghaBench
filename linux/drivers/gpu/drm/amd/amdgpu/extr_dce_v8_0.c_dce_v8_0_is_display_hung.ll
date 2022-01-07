; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_is_display_hung.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_is_display_hung.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@mmCRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@CRTC_CONTROL__CRTC_MASTER_EN_MASK = common dso_local global i32 0, align 4
@mmCRTC_STATUS_HV_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @dce_v8_0_is_display_hung to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_is_display_hung(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %9
  %17 = load i64, i64* @mmCRTC_CONTROL, align 8
  %18 = load i64*, i64** @crtc_offsets, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i32 @RREG32(i64 %22)
  %24 = load i32, i32* @CRTC_CONTROL__CRTC_MASTER_EN_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %16
  %28 = load i64, i64* @mmCRTC_STATUS_HV_COUNT, align 8
  %29 = load i64*, i64** @crtc_offsets, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = call i32 @RREG32(i64 %33)
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 %36
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %27, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %9

48:                                               ; preds = %9
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %101, %48
  %50 = load i64, i64* %7, align 8
  %51 = icmp ult i64 %50, 10
  br i1 %51, label %52, label %104

52:                                               ; preds = %49
  store i64 0, i64* %6, align 8
  br label %53

53:                                               ; preds = %92, %52
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %53
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 1, %63
  %65 = sext i32 %64 to i64
  %66 = and i64 %61, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %60
  %69 = load i64, i64* @mmCRTC_STATUS_HV_COUNT, align 8
  %70 = load i64*, i64** @crtc_offsets, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %69, %73
  %75 = call i32 @RREG32(i64 %74)
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %68
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 1, %84
  %86 = xor i32 %85, -1
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %4, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %82, %68
  br label %91

91:                                               ; preds = %90, %60
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  br label %53

95:                                               ; preds = %53
  %96 = load i64, i64* %4, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 0, i32* %2, align 4
  br label %105

99:                                               ; preds = %95
  %100 = call i32 @udelay(i32 100)
  br label %101

101:                                              ; preds = %99
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %7, align 8
  br label %49

104:                                              ; preds = %49
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
