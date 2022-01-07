; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_trim_voltage_table_to_fit_state_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_trim_voltage_table_to_fit_state_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_voltage_table = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %0, i32 %1, %struct.atom_voltage_table* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atom_voltage_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.atom_voltage_table* %2, %struct.atom_voltage_table** %6, align 8
  %9 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %10 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %17 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %41, %15
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %27 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %36 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %6, align 8
  %47 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
