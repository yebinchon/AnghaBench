; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_asic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_asic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@radeon_hard_reset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_asic_reset(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call i32 @evergreen_gpu_pci_config_reset(%struct.radeon_device* %10)
  store i32 0, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = call i64 @evergreen_gpu_check_soft_reset(%struct.radeon_device* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = call i32 @r600_set_bios_scratch_engine_hung(%struct.radeon_device* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @evergreen_gpu_soft_reset(%struct.radeon_device* %21, i64 %22)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = call i64 @evergreen_gpu_check_soft_reset(%struct.radeon_device* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i64, i64* @radeon_hard_reset, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = call i32 @evergreen_gpu_pci_config_reset(%struct.radeon_device* %32)
  br label %34

34:                                               ; preds = %31, %28, %20
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = call i64 @evergreen_gpu_check_soft_reset(%struct.radeon_device* %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %41 = call i32 @r600_set_bios_scratch_engine_hung(%struct.radeon_device* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @evergreen_gpu_pci_config_reset(%struct.radeon_device*) #1

declare dso_local i64 @evergreen_gpu_check_soft_reset(%struct.radeon_device*) #1

declare dso_local i32 @r600_set_bios_scratch_engine_hung(%struct.radeon_device*, i32) #1

declare dso_local i32 @evergreen_gpu_soft_reset(%struct.radeon_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
