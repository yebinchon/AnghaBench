; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_construct_display_voltage_mapping_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_construct_display_voltage_mapping_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_disp_clock_voltage_mapping_table = type { i64*, i64 }
%struct.TYPE_3__ = type { i64 }

@SUMO_MAX_NUMBER_VOLTAGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.sumo_disp_clock_voltage_mapping_table*, %struct.TYPE_3__*)* @sumo_construct_display_voltage_mapping_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_construct_display_voltage_mapping_table(%struct.radeon_device* %0, %struct.sumo_disp_clock_voltage_mapping_table* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.sumo_disp_clock_voltage_mapping_table*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.sumo_disp_clock_voltage_mapping_table* %1, %struct.sumo_disp_clock_voltage_mapping_table** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %31, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @SUMO_MAX_NUMBER_VOLTAGES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %34

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sumo_disp_clock_voltage_mapping_table*, %struct.sumo_disp_clock_voltage_mapping_table** %5, align 8
  %27 = getelementptr inbounds %struct.sumo_disp_clock_voltage_mapping_table, %struct.sumo_disp_clock_voltage_mapping_table* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %25, i64* %30, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %8

34:                                               ; preds = %19, %8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.sumo_disp_clock_voltage_mapping_table*, %struct.sumo_disp_clock_voltage_mapping_table** %5, align 8
  %37 = getelementptr inbounds %struct.sumo_disp_clock_voltage_mapping_table, %struct.sumo_disp_clock_voltage_mapping_table* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sumo_disp_clock_voltage_mapping_table*, %struct.sumo_disp_clock_voltage_mapping_table** %5, align 8
  %39 = getelementptr inbounds %struct.sumo_disp_clock_voltage_mapping_table, %struct.sumo_disp_clock_voltage_mapping_table* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.sumo_disp_clock_voltage_mapping_table*, %struct.sumo_disp_clock_voltage_mapping_table** %5, align 8
  %44 = getelementptr inbounds %struct.sumo_disp_clock_voltage_mapping_table, %struct.sumo_disp_clock_voltage_mapping_table* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 80000, i64* %46, align 8
  %47 = load %struct.sumo_disp_clock_voltage_mapping_table*, %struct.sumo_disp_clock_voltage_mapping_table** %5, align 8
  %48 = getelementptr inbounds %struct.sumo_disp_clock_voltage_mapping_table, %struct.sumo_disp_clock_voltage_mapping_table* %47, i32 0, i32 1
  store i64 1, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
