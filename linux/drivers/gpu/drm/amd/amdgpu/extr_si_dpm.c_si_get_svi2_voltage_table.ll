; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_get_svi2_voltage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_get_svi2_voltage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_clock_voltage_dependency_table = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.atom_voltage_table = type { i64, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_clock_voltage_dependency_table*, %struct.atom_voltage_table*)* @si_get_svi2_voltage_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_get_svi2_voltage_table(%struct.amdgpu_device* %0, %struct.amdgpu_clock_voltage_dependency_table* %1, %struct.atom_voltage_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_clock_voltage_dependency_table*, align 8
  %7 = alloca %struct.atom_voltage_table*, align 8
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_clock_voltage_dependency_table* %1, %struct.amdgpu_clock_voltage_dependency_table** %6, align 8
  store %struct.atom_voltage_table* %2, %struct.atom_voltage_table** %7, align 8
  %9 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %6, align 8
  %10 = icmp eq %struct.amdgpu_clock_voltage_dependency_table* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %54

14:                                               ; preds = %3
  %15 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %7, align 8
  %16 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %7, align 8
  %18 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %7, align 8
  %23 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %50, %14
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %7, align 8
  %27 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %6, align 8
  %32 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %7, align 8
  %39 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %37, i32* %43, align 8
  %44 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %7, align 8
  %45 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %30
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %24

53:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %11
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
