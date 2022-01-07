; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_update_sclk_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_update_sclk_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i64, i32, i64 }

@SMU7_Discrete_DpmTable = common dso_local global i32 0, align 4
@LowSclkInterruptT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_update_sclk_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_update_sclk_t(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %6)
  store %struct.ci_power_info* %7, %struct.ci_power_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %8 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @cpu_to_be32(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %19 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @SMU7_Discrete_DpmTable, align 4
  %22 = load i32, i32* @LowSclkInterruptT, align 4
  %23 = call i64 @offsetof(i32 %21, i32 %22)
  %24 = add nsw i64 %20, %23
  %25 = bitcast i64* %5 to i32*
  %26 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %27 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ci_copy_bytes_to_smc(%struct.radeon_device* %17, i64 %24, i32* %25, i32 8, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %12, %1
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.radeon_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
