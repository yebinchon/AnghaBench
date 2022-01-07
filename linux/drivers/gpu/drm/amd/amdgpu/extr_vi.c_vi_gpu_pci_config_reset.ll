; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_gpu_pci_config_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_gpu_pci_config_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"GPU pci config reset\0A\00", align 1
@mmCONFIG_MEMSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vi_gpu_pci_config_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vi_gpu_pci_config_reset(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dev_info(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pci_clear_master(i32 %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i32 @amdgpu_device_pci_config_reset(%struct.amdgpu_device* %13)
  %15 = call i32 @udelay(i32 100)
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i32, i32* @mmCONFIG_MEMSIZE, align 4
  %24 = call i32 @RREG32(i32 %23)
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_set_master(i32 %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  store i32 0, i32* %2, align 4
  br label %41

33:                                               ; preds = %22
  %34 = call i32 @udelay(i32 1)
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @pci_clear_master(i32) #1

declare dso_local i32 @amdgpu_device_pci_config_reset(%struct.amdgpu_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
