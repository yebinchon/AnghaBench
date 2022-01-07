; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_lock_adev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_lock_adev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, i32, i32 }

@PP_MP1_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@PP_MP1_STATE_RESET = common dso_local global i32 0, align 4
@PP_MP1_STATE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @amdgpu_device_lock_adev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_device_lock_adev(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 3
  %11 = call i32 @mutex_trylock(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %15, %14
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 2
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %26 = call i32 @amdgpu_asic_reset_method(%struct.amdgpu_device* %25)
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 128, label %31
  ]

27:                                               ; preds = %19
  %28 = load i32, i32* @PP_MP1_STATE_SHUTDOWN, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %39

31:                                               ; preds = %19
  %32 = load i32, i32* @PP_MP1_STATE_RESET, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %19
  %36 = load i32, i32* @PP_MP1_STATE_NONE, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31, %27
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = call i32 @amdgpu_amdkfd_pre_reset(%struct.amdgpu_device* %44)
  br label %46

46:                                               ; preds = %43, %39
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @amdgpu_asic_reset_method(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_amdkfd_pre_reset(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
