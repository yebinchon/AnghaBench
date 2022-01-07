; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_device.c_kgd2kfd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32, i32, i32, i32, %struct.kfd2kgd_calls*, %struct.pci_dev*, %struct.kfd_device_info*, %struct.kgd_dev*, i32 }
%struct.kfd_device_info = type { i64 }
%struct.kgd_dev = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.kfd2kgd_calls = type { i32 }

@kfd_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"kgd2kfd_probe failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"skipped device %x:%x, PCI rejects atomics\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_dev* @kgd2kfd_probe(%struct.kgd_dev* %0, %struct.pci_dev* %1, %struct.kfd2kgd_calls* %2) #0 {
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.kgd_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.kfd2kgd_calls*, align 8
  %8 = alloca %struct.kfd_dev*, align 8
  %9 = alloca %struct.kfd_device_info*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.kfd2kgd_calls* %2, %struct.kfd2kgd_calls** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.kfd_device_info* @lookup_device_info(i32 %12)
  store %struct.kfd_device_info* %13, %struct.kfd_device_info** %9, align 8
  %14 = load %struct.kfd_device_info*, %struct.kfd_device_info** %9, align 8
  %15 = icmp ne %struct.kfd_device_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @kfd_device, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.kfd_dev* null, %struct.kfd_dev** %4, align 8
  br label %78

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.kfd_dev* @kzalloc(i32 64, i32 %20)
  store %struct.kfd_dev* %21, %struct.kfd_dev** %8, align 8
  %22 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %23 = icmp ne %struct.kfd_dev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.kfd_dev* null, %struct.kfd_dev** %4, align 8
  br label %78

25:                                               ; preds = %19
  %26 = load %struct.kgd_dev*, %struct.kgd_dev** %5, align 8
  %27 = call i32 @amdgpu_amdkfd_have_atomics_support(%struct.kgd_dev* %26)
  %28 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %29 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.kfd_device_info*, %struct.kfd_device_info** %9, align 8
  %31 = getelementptr inbounds %struct.kfd_device_info, %struct.kfd_device_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %36 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @kfd_device, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %49 = call i32 @kfree(%struct.kfd_dev* %48)
  store %struct.kfd_dev* null, %struct.kfd_dev** %4, align 8
  br label %78

50:                                               ; preds = %34, %25
  %51 = load %struct.kgd_dev*, %struct.kgd_dev** %5, align 8
  %52 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %53 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %52, i32 0, i32 8
  store %struct.kgd_dev* %51, %struct.kgd_dev** %53, align 8
  %54 = load %struct.kfd_device_info*, %struct.kfd_device_info** %9, align 8
  %55 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %56 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %55, i32 0, i32 7
  store %struct.kfd_device_info* %54, %struct.kfd_device_info** %56, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %58 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %59 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %58, i32 0, i32 6
  store %struct.pci_dev* %57, %struct.pci_dev** %59, align 8
  %60 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %61 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.kfd2kgd_calls*, %struct.kfd2kgd_calls** %7, align 8
  %63 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %64 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %63, i32 0, i32 5
  store %struct.kfd2kgd_calls* %62, %struct.kfd2kgd_calls** %64, align 8
  %65 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %66 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %65, i32 0, i32 4
  %67 = call i32 @atomic_set(i32* %66, i32 0)
  %68 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %69 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %68, i32 0, i32 3
  %70 = call i32 @mutex_init(i32* %69)
  %71 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %72 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %71, i32 0, i32 2
  %73 = call i32 @memset(i32* %72, i32 0, i32 4)
  %74 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %75 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %74, i32 0, i32 1
  %76 = call i32 @atomic_set(i32* %75, i32 0)
  %77 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  store %struct.kfd_dev* %77, %struct.kfd_dev** %4, align 8
  br label %78

78:                                               ; preds = %50, %39, %24, %16
  %79 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  ret %struct.kfd_dev* %79
}

declare dso_local %struct.kfd_device_info* @lookup_device_info(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.kfd_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_amdkfd_have_atomics_support(%struct.kgd_dev*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.kfd_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
