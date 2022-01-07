; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_btc_apply_voltage_dependency_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_btc_apply_voltage_dependency_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_clock_voltage_dependency_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_clock_voltage_dependency_table*, i64, i64, i64*)* @btc_apply_voltage_dependency_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_apply_voltage_dependency_rules(%struct.amdgpu_clock_voltage_dependency_table* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.amdgpu_clock_voltage_dependency_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.amdgpu_clock_voltage_dependency_table* %0, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %11 = icmp eq %struct.amdgpu_clock_voltage_dependency_table* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %4
  br label %87

18:                                               ; preds = %12
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %71, %18
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ule i64 %26, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %25
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %37, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %35
  %47 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %48 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %58 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  br label %66

64:                                               ; preds = %46
  %65 = load i64, i64* %7, align 8
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi i64 [ %63, %56 ], [ %65, %64 ]
  %68 = load i64*, i64** %8, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %35
  br label %87

70:                                               ; preds = %25
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %19

74:                                               ; preds = %19
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %80, align 8
  br label %84

82:                                               ; preds = %74
  %83 = load i64, i64* %7, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  %86 = load i64*, i64** %8, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %69, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
