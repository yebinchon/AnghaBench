; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_validate_phase_shedding_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_validate_phase_shedding_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.atom_voltage_table = type { i32, i32 }
%struct.amdgpu_phase_shedding_limits_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.atom_voltage_table*, %struct.amdgpu_phase_shedding_limits_table*)* @si_validate_phase_shedding_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_validate_phase_shedding_tables(%struct.amdgpu_device* %0, %struct.atom_voltage_table* %1, %struct.amdgpu_phase_shedding_limits_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.atom_voltage_table*, align 8
  %7 = alloca %struct.amdgpu_phase_shedding_limits_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.atom_voltage_table* %1, %struct.atom_voltage_table** %6, align 8
  store %struct.amdgpu_phase_shedding_limits_table* %2, %struct.amdgpu_phase_shedding_limits_table** %7, align 8
  %11 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %12 = icmp eq %struct.atom_voltage_table* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.amdgpu_phase_shedding_limits_table*, %struct.amdgpu_phase_shedding_limits_table** %7, align 8
  %15 = icmp eq %struct.amdgpu_phase_shedding_limits_table* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %44

17:                                               ; preds = %13
  %18 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %19 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @hweight32(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %44

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %30 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.amdgpu_phase_shedding_limits_table*, %struct.amdgpu_phase_shedding_limits_table** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_phase_shedding_limits_table, %struct.amdgpu_phase_shedding_limits_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %25, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
