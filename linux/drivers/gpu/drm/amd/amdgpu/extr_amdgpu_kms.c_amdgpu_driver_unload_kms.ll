; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_driver_unload_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_driver_unload_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device*, i32 }
%struct.amdgpu_device = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_driver_unload_kms(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = icmp eq %struct.amdgpu_device* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i32 @amdgpu_unregister_gpu_instance(%struct.amdgpu_device* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %43

18:                                               ; preds = %10
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = call i32 @amdgpu_virt_request_full_gpu(%struct.amdgpu_device* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i64 @amdgpu_device_is_px(%struct.drm_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pm_runtime_get_sync(i32 %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pm_runtime_forbid(i32 %36)
  br label %38

38:                                               ; preds = %29, %25
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = call i32 @amdgpu_acpi_fini(%struct.amdgpu_device* %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = call i32 @amdgpu_device_fini(%struct.amdgpu_device* %41)
  br label %43

43:                                               ; preds = %38, %17
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = call i32 @kfree(%struct.amdgpu_device* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  store %struct.amdgpu_device* null, %struct.amdgpu_device** %47, align 8
  br label %48

48:                                               ; preds = %43, %9
  ret void
}

declare dso_local i32 @amdgpu_unregister_gpu_instance(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_request_full_gpu(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @amdgpu_device_is_px(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_forbid(i32) #1

declare dso_local i32 @amdgpu_acpi_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_device_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @kfree(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
