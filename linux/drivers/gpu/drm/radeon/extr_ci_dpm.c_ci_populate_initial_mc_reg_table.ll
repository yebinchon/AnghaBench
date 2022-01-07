; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_initial_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_initial_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_initial_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_initial_mc_reg_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %6)
  store %struct.ci_power_info* %7, %struct.ci_power_info** %4, align 8
  %8 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %9 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %8, i32 0, i32 1
  %10 = call i32 @memset(i32* %9, i32 0, i32 4)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %13 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %12, i32 0, i32 1
  %14 = call i32 @ci_populate_mc_reg_addresses(%struct.radeon_device* %11, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %22 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %21, i32 0, i32 1
  %23 = call i32 @ci_convert_mc_reg_table_to_smc(%struct.radeon_device* %20, i32* %22)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %29 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %28, i32 0, i32 1
  %30 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %31 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ci_copy_bytes_to_smc(%struct.radeon_device* %24, i32 %27, i32* %29, i32 4, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %19, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ci_populate_mc_reg_addresses(%struct.radeon_device*, i32*) #1

declare dso_local i32 @ci_convert_mc_reg_table_to_smc(%struct.radeon_device*, i32*) #1

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
