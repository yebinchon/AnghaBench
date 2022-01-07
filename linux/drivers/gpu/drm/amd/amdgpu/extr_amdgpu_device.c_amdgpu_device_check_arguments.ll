; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_check_arguments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_check_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@amdgpu_sched_jobs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sched jobs (%d) must be at least 4\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"sched jobs (%d) must be a power of 2\0A\00", align 1
@amdgpu_gart_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"gart size (%d) too small\0A\00", align 1
@amdgpu_gtt_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"gtt size (%d) too small\0A\00", align 1
@amdgpu_vm_fragment_size = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"valid range is between 4 and 9\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"invalid lockup_timeout parameter syntax\0A\00", align 1
@amdgpu_fw_load_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_device_check_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_check_arguments(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @amdgpu_sched_jobs, align 4
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @amdgpu_sched_jobs, align 4
  %12 = call i32 (i32, i8*, ...) @dev_warn(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 4, i32* @amdgpu_sched_jobs, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @amdgpu_sched_jobs, align 4
  %15 = call i32 @is_power_of_2(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @amdgpu_sched_jobs, align 4
  %22 = call i32 (i32, i8*, ...) @dev_warn(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @amdgpu_sched_jobs, align 4
  %24 = call i32 @roundup_pow_of_two(i32 %23)
  store i32 %24, i32* @amdgpu_sched_jobs, align 4
  br label %25

25:                                               ; preds = %17, %13
  br label %26

26:                                               ; preds = %25, %7
  %27 = load i32, i32* @amdgpu_gart_size, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* @amdgpu_gart_size, align 4
  %31 = icmp slt i32 %30, 32
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @amdgpu_gart_size, align 4
  %37 = call i32 (i32, i8*, ...) @dev_warn(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  store i32 -1, i32* @amdgpu_gart_size, align 4
  br label %38

38:                                               ; preds = %32, %29, %26
  %39 = load i32, i32* @amdgpu_gtt_size, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* @amdgpu_gtt_size, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @amdgpu_gtt_size, align 4
  %49 = call i32 (i32, i8*, ...) @dev_warn(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  store i32 -1, i32* @amdgpu_gtt_size, align 4
  br label %50

50:                                               ; preds = %44, %41, %38
  %51 = load i32, i32* @amdgpu_vm_fragment_size, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32, i32* @amdgpu_vm_fragment_size, align 4
  %55 = icmp sgt i32 %54, 9
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @amdgpu_vm_fragment_size, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %53
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_warn(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* @amdgpu_vm_fragment_size, align 4
  br label %64

64:                                               ; preds = %59, %56, %50
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = call i32 @amdgpu_device_check_smu_prv_buffer_size(%struct.amdgpu_device* %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = call i32 @amdgpu_device_check_vm_size(%struct.amdgpu_device* %67)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = call i32 @amdgpu_device_check_block_size(%struct.amdgpu_device* %69)
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = call i32 @amdgpu_device_get_job_timeout_settings(%struct.amdgpu_device* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %89

81:                                               ; preds = %64
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = load i32, i32* @amdgpu_fw_load_type, align 4
  %84 = call i32 @amdgpu_ucode_get_load_type(%struct.amdgpu_device* %82, i32 %83)
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %81, %75
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @amdgpu_device_check_smu_prv_buffer_size(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_check_vm_size(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_check_block_size(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_get_job_timeout_settings(%struct.amdgpu_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amdgpu_ucode_get_load_type(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
