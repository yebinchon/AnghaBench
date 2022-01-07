; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_vce_boot_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_get_vce_boot_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.radeon_vce_clock_voltage_dependency_table }
%struct.radeon_vce_clock_voltage_dependency_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*)* @ci_get_vce_boot_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ci_get_vce_boot_level(%struct.radeon_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_vce_clock_voltage_dependency_table*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i64 30000, i64* %5, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.radeon_vce_clock_voltage_dependency_table* %11, %struct.radeon_vce_clock_voltage_dependency_table** %6, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %6, align 8
  %20 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %39

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, 1
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
