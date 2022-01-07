; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_smc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_upload_smc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@SI_SMC_SOFT_REGISTER_crtc_index = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@SI_SMC_SOFT_REGISTER_mclk_change_block_cp_min = common dso_local global i32 0, align 4
@SI_SMC_SOFT_REGISTER_mclk_change_block_cp_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_upload_smc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_upload_smc_data(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_crtc*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_crtc* null, %struct.amdgpu_crtc** %4, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %35, i64 %37
  %39 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %38, align 8
  store %struct.amdgpu_crtc* %39, %struct.amdgpu_crtc** %4, align 8
  br label %44

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %14

44:                                               ; preds = %31, %14
  %45 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %46 = icmp eq %struct.amdgpu_crtc* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %93

48:                                               ; preds = %44
  %49 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %93

54:                                               ; preds = %48
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = load i32, i32* @SI_SMC_SOFT_REGISTER_crtc_index, align 4
  %57 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @si_write_smc_soft_register(%struct.amdgpu_device* %55, i32 %56, i32 %59)
  %61 = load i64, i64* @PPSMC_Result_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %93

64:                                               ; preds = %54
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = load i32, i32* @SI_SMC_SOFT_REGISTER_mclk_change_block_cp_min, align 4
  %67 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %71 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %69, %72
  %74 = call i64 @si_write_smc_soft_register(%struct.amdgpu_device* %65, i32 %66, i32 %73)
  %75 = load i64, i64* @PPSMC_Result_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %93

78:                                               ; preds = %64
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = load i32, i32* @SI_SMC_SOFT_REGISTER_mclk_change_block_cp_max, align 4
  %81 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %82 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %83, %86
  %88 = call i64 @si_write_smc_soft_register(%struct.amdgpu_device* %79, i32 %80, i32 %87)
  %89 = load i64, i64* @PPSMC_Result_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %93

92:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %91, %77, %63, %53, %47, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @si_write_smc_soft_register(%struct.amdgpu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
