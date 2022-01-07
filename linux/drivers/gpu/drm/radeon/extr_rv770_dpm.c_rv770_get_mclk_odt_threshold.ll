; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_mclk_odt_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_mclk_odt_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.rv7xx_power_info = type { i32 }
%struct.atom_memory_info = type { i64 }

@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8
@MEM_TYPE_DDR2 = common dso_local global i64 0, align 8
@MEM_TYPE_DDR3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_get_mclk_odt_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_get_mclk_odt_threshold(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_memory_info, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %6)
  store %struct.rv7xx_power_info* %7, %struct.rv7xx_power_info** %3, align 8
  %8 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHIP_RV730, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_RV710, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15, %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = call i32 @rv770_get_memory_module_index(%struct.radeon_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @radeon_atom_get_memory_info(%struct.radeon_device* %24, i32 %25, %struct.atom_memory_info* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %43

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MEM_TYPE_DDR2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MEM_TYPE_DDR3, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29
  %40 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %41 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %40, i32 0, i32 0
  store i32 30000, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %28, %42, %15
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_memory_module_index(%struct.radeon_device*) #1

declare dso_local i64 @radeon_atom_get_memory_info(%struct.radeon_device*, i32, %struct.atom_memory_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
