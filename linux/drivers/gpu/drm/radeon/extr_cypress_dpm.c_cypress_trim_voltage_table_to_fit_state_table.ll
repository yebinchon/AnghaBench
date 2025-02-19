; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_trim_voltage_table_to_fit_state_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_trim_voltage_table_to_fit_state_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_voltage_table = type { i32, i32* }

@MAX_NO_VREG_STEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.atom_voltage_table*)* @cypress_trim_voltage_table_to_fit_state_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_trim_voltage_table_to_fit_state_table(%struct.radeon_device* %0, %struct.atom_voltage_table* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.atom_voltage_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.atom_voltage_table* %1, %struct.atom_voltage_table** %4, align 8
  %7 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %4, align 8
  %8 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MAX_NO_VREG_STEPS, align 4
  %11 = icmp ule i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %4, align 8
  %15 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MAX_NO_VREG_STEPS, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %39, %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAX_NO_VREG_STEPS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %4, align 8
  %25 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %4, align 8
  %34 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load i32, i32* @MAX_NO_VREG_STEPS, align 4
  %44 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %4, align 8
  %45 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
