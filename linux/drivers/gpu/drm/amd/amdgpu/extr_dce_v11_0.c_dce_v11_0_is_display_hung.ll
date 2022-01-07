; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_is_display_hung.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_is_display_hung.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@mmCRTC_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@CRTC_CONTROL = common dso_local global i32 0, align 4
@CRTC_MASTER_EN = common dso_local global i32 0, align 4
@mmCRTC_STATUS_HV_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @dce_v11_0_is_display_hung to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_is_display_hung(%struct.amdgpu_device* %0) #0 {
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

9:                                                ; preds = %46, %1
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %9
  %17 = load i64, i64* @mmCRTC_CONTROL, align 8
  %18 = load i64*, i64** @crtc_offsets, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i64 @RREG32(i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @CRTC_CONTROL, align 4
  %26 = load i32, i32* @CRTC_MASTER_EN, align 4
  %27 = call i64 @REG_GET_FIELD(i64 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %16
  %30 = load i64, i64* @mmCRTC_STATUS_HV_COUNT, align 8
  %31 = load i64*, i64** @crtc_offsets, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %30, %34
  %36 = call i64 @RREG32(i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 %37
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %4, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %29, %16
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %9

49:                                               ; preds = %9
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %101, %49
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %51, 10
  br i1 %52, label %53, label %104

53:                                               ; preds = %50
  store i64 0, i64* %6, align 8
  br label %54

54:                                               ; preds = %92, %53
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %54
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = and i64 %62, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %61
  %70 = load i64, i64* @mmCRTC_STATUS_HV_COUNT, align 8
  %71 = load i64*, i64** @crtc_offsets, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = call i64 @RREG32(i64 %75)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds [6 x i64], [6 x i64]* %5, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %69
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 1, %84
  %86 = xor i32 %85, -1
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %4, align 8
  %89 = and i64 %88, %87
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %82, %69
  br label %91

91:                                               ; preds = %90, %61
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  br label %54

95:                                               ; preds = %54
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
  br label %50

104:                                              ; preds = %50
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @RREG32(i64) #1

declare dso_local i64 @REG_GET_FIELD(i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
