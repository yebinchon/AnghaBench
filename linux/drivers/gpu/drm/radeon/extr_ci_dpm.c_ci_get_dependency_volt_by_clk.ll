; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_dependency_volt_by_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_dependency_volt_by_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_clock_voltage_dependency_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_clock_voltage_dependency_table*, i64, i64*)* @ci_get_dependency_volt_by_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_get_dependency_volt_by_clk(%struct.radeon_device* %0, %struct.radeon_clock_voltage_dependency_table* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_clock_voltage_dependency_table* %1, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %12 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %27 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %37 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %5, align 4
  br label %58

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %19

48:                                               ; preds = %19
  %49 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %50 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %48, %35, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
