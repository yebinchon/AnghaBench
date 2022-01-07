; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_initialize_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_initialize_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32 }
%struct.atom_memory_clock_range_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cypress_initialize_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_initialize_mc_reg_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atom_memory_clock_range_table, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call i32 @rv770_get_memory_module_index(%struct.radeon_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = bitcast %struct.atom_memory_clock_range_table* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @radeon_atom_get_mclk_range_table(%struct.radeon_device* %13, i32 %16, i32 %17, %struct.atom_memory_clock_range_table* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @cypress_retrieve_ac_timing_for_all_ranges(%struct.radeon_device* %24, %struct.atom_memory_clock_range_table* %6)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_memory_module_index(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @radeon_atom_get_mclk_range_table(%struct.radeon_device*, i32, i32, %struct.atom_memory_clock_range_table*) #1

declare dso_local i32 @cypress_retrieve_ac_timing_for_all_ranges(%struct.radeon_device*, %struct.atom_memory_clock_range_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
