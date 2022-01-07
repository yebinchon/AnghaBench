; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_patch_single_dependency_table_based_on_leakage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_patch_single_dependency_table_based_on_leakage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_clock_voltage_dependency_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rv7xx_power_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_clock_voltage_dependency_table*)* @ni_patch_single_dependency_table_based_on_leakage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_patch_single_dependency_table_based_on_leakage(%struct.radeon_device* %0, %struct.radeon_clock_voltage_dependency_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_clock_voltage_dependency_table* %1, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %6, align 8
  %10 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %11 = icmp ne %struct.radeon_clock_voltage_dependency_table* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %21 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 65281, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %28
  %37 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %38 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %36, %19
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %13

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %50, %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
