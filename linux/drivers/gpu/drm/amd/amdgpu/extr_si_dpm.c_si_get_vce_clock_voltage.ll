; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_get_vce_clock_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_get_vce_clock_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.amdgpu_vce_clock_voltage_dependency_table }
%struct.amdgpu_vce_clock_voltage_dependency_table = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i64, i64, i32*)* @si_get_vce_clock_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_get_vce_clock_voltage(%struct.amdgpu_device* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_vce_clock_voltage_dependency_table*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.amdgpu_vce_clock_voltage_dependency_table* %19, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22, %4
  %26 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %27 = icmp ne %struct.amdgpu_vce_clock_voltage_dependency_table* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %30 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %22
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %97

35:                                               ; preds = %28, %25
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %72, %35
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %39 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %45 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %43, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %42
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %55 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %53, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %52
  %63 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %64 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %11, align 4
  br label %75

71:                                               ; preds = %52, %42
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %36

75:                                               ; preds = %62, %36
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %80 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %12, align 8
  %83 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %78, %75
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @si_get_lower_of_leakage_and_vce_voltage(%struct.amdgpu_device* %91, i32 %93)
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %90, %33
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @si_get_lower_of_leakage_and_vce_voltage(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
