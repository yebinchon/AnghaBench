; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_valid_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_valid_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.phm_clock_array = type { i64, i64* }
%struct.phm_clock_voltage_dependency_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_clock_array**, %struct.phm_clock_voltage_dependency_table*)* @get_valid_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_valid_clk(%struct.pp_hwmgr* %0, %struct.phm_clock_array** %1, %struct.phm_clock_voltage_dependency_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.phm_clock_array**, align 8
  %7 = alloca %struct.phm_clock_voltage_dependency_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.phm_clock_array*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.phm_clock_array** %1, %struct.phm_clock_array*** %6, align 8
  store %struct.phm_clock_voltage_dependency_table* %2, %struct.phm_clock_voltage_dependency_table** %7, align 8
  %11 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %7, align 8
  %12 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = add i64 8, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.phm_clock_array* @kzalloc(i64 %17, i32 %18)
  store %struct.phm_clock_array* %19, %struct.phm_clock_array** %10, align 8
  %20 = load %struct.phm_clock_array*, %struct.phm_clock_array** %10, align 8
  %21 = icmp eq %struct.phm_clock_array* null, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %3
  %26 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %7, align 8
  %27 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load %struct.phm_clock_array*, %struct.phm_clock_array** %10, align 8
  %31 = getelementptr inbounds %struct.phm_clock_array, %struct.phm_clock_array* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %51, %25
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.phm_clock_array*, %struct.phm_clock_array** %10, align 8
  %35 = getelementptr inbounds %struct.phm_clock_array, %struct.phm_clock_array* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.phm_clock_voltage_dependency_table*, %struct.phm_clock_voltage_dependency_table** %7, align 8
  %40 = getelementptr inbounds %struct.phm_clock_voltage_dependency_table, %struct.phm_clock_voltage_dependency_table* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.phm_clock_array*, %struct.phm_clock_array** %10, align 8
  %47 = getelementptr inbounds %struct.phm_clock_array, %struct.phm_clock_array* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %45, i64* %50, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.phm_clock_array*, %struct.phm_clock_array** %10, align 8
  %56 = load %struct.phm_clock_array**, %struct.phm_clock_array*** %6, align 8
  store %struct.phm_clock_array* %55, %struct.phm_clock_array** %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %22
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.phm_clock_array* @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
