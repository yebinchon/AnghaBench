; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_4__, %struct.smu_context, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.smu_context = type { i32 }
%struct.TYPE_3__ = type { i64 }

@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@CHIP_NAVI10 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"SMC firmware status is not correct\0A\00", align 1
@AMD_IS_APU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SMU is initialized successfully!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smu_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_hw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.smu_context*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 3
  store %struct.smu_context* %10, %struct.smu_context** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_NAVI10, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %25 = call i32 @smu_load_microcode(%struct.smu_context* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %107

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %34 = call i32 @smu_check_fw_status(%struct.smu_context* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %107

40:                                               ; preds = %32
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AMD_IS_APU, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 3
  %50 = call i32 @smu_powergate_sdma(%struct.smu_context* %49, i32 0)
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 3
  %53 = call i32 @smu_powergate_vcn(%struct.smu_context* %52, i32 0)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %56 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %107

60:                                               ; preds = %54
  %61 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %62 = call i32 @smu_feature_init_dpm(%struct.smu_context* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %105

66:                                               ; preds = %60
  %67 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %68 = call i32 @smu_smc_table_hw_init(%struct.smu_context* %67, i32 1)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %105

72:                                               ; preds = %66
  %73 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %74 = call i32 @smu_alloc_memory_pool(%struct.smu_context* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %105

78:                                               ; preds = %72
  %79 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %80 = call i32 @smu_notify_memory_pool_location(%struct.smu_context* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %105

84:                                               ; preds = %78
  %85 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %86 = call i32 @smu_start_thermal_control(%struct.smu_context* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %105

90:                                               ; preds = %84
  %91 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %92 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  br label %103

99:                                               ; preds = %90
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %107

105:                                              ; preds = %89, %83, %77, %71, %65
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %103, %59, %37, %28
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @smu_load_microcode(%struct.smu_context*) #1

declare dso_local i32 @smu_check_fw_status(%struct.smu_context*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_powergate_sdma(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_powergate_vcn(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_feature_init_dpm(%struct.smu_context*) #1

declare dso_local i32 @smu_smc_table_hw_init(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_alloc_memory_pool(%struct.smu_context*) #1

declare dso_local i32 @smu_notify_memory_pool_location(%struct.smu_context*) #1

declare dso_local i32 @smu_start_thermal_control(%struct.smu_context*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
