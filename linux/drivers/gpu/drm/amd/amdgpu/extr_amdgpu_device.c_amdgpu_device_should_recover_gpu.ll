; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_should_recover_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_should_recover_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Timeout, but no hardware hang detected.\0A\00", align 1
@amdgpu_gpu_recovery = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"GPU recovery disabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_device_should_recover_gpu(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %5 = call i32 @amdgpu_device_ip_check_soft_reset(%struct.amdgpu_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @DRM_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @amdgpu_gpu_recovery, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %29

13:                                               ; preds = %9
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %31

18:                                               ; preds = %13
  %19 = load i32, i32* @amdgpu_gpu_recovery, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 140, label %25
    i32 138, label %25
    i32 132, label %25
    i32 133, label %25
    i32 139, label %25
    i32 137, label %25
    i32 136, label %25
    i32 135, label %25
    i32 128, label %25
    i32 129, label %25
    i32 131, label %25
    i32 130, label %25
    i32 134, label %25
  ]

25:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  br label %27

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %18
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %26, %12
  %30 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %28, %17, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @amdgpu_device_ip_check_soft_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
