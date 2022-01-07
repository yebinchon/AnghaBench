; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_select_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_sht3x_select_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht3x_data = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@sht3x_cmd_measure_periodic_mode = common dso_local global i32 0, align 4
@sht3x_cmd_measure_blocking_hpm = common dso_local global i32 0, align 4
@sht3x_cmd_measure_blocking_lpm = common dso_local global i32 0, align 4
@sht3x_cmd_measure_nonblocking_hpm = common dso_local global i32 0, align 4
@SHT3X_NONBLOCKING_WAIT_TIME_HPM = common dso_local global i64 0, align 8
@sht3x_cmd_measure_nonblocking_lpm = common dso_local global i32 0, align 4
@SHT3X_NONBLOCKING_WAIT_TIME_LPM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sht3x_data*)* @sht3x_select_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sht3x_select_command(%struct.sht3x_data* %0) #0 {
  %2 = alloca %struct.sht3x_data*, align 8
  store %struct.sht3x_data* %0, %struct.sht3x_data** %2, align 8
  %3 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %4 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @sht3x_cmd_measure_periodic_mode, align 4
  %9 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %10 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %12 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %15 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %21 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @sht3x_cmd_measure_blocking_hpm, align 4
  br label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @sht3x_cmd_measure_blocking_lpm, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %32 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %34 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %56

35:                                               ; preds = %13
  %36 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %37 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @sht3x_cmd_measure_nonblocking_hpm, align 4
  %43 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %44 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @SHT3X_NONBLOCKING_WAIT_TIME_HPM, align 8
  %46 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %47 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @sht3x_cmd_measure_nonblocking_lpm, align 4
  %50 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %51 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @SHT3X_NONBLOCKING_WAIT_TIME_LPM, align 8
  %53 = load %struct.sht3x_data*, %struct.sht3x_data** %2, align 8
  %54 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %41
  br label %56

56:                                               ; preds = %55, %29
  br label %57

57:                                               ; preds = %56, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
