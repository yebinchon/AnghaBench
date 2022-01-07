; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_mvdd_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_mvdd_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32, i64 }
%struct.atom_memory_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rv770_get_mvdd_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_get_mvdd_configuration(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atom_memory_info, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %7)
  store %struct.rv7xx_power_info* %8, %struct.rv7xx_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @rv770_get_memory_module_index(%struct.radeon_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @radeon_atom_get_memory_info(%struct.radeon_device* %11, i32 %12, %struct.atom_memory_info* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %17 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  store i32 0, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = call i64 @rv770_get_mclk_split_point(%struct.atom_memory_info* %6)
  %20 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %21 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %28 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  store i32 0, i32* %2, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = call i32 @rv770_get_mvdd_pin_configuration(%struct.radeon_device* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_memory_module_index(%struct.radeon_device*) #1

declare dso_local i64 @radeon_atom_get_memory_info(%struct.radeon_device*, i32, %struct.atom_memory_info*) #1

declare dso_local i64 @rv770_get_mclk_split_point(%struct.atom_memory_info*) #1

declare dso_local i32 @rv770_get_mvdd_pin_configuration(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
