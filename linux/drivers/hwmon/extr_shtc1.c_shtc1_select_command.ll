; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_select_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_select_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shtc1_data = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@shtc1_cmd_measure_blocking_hpm = common dso_local global i32 0, align 4
@shtc1_cmd_measure_nonblocking_hpm = common dso_local global i32 0, align 4
@shtc1 = common dso_local global i64 0, align 8
@SHTC1_NONBLOCKING_WAIT_TIME_HPM = common dso_local global i32 0, align 4
@SHTC3_NONBLOCKING_WAIT_TIME_HPM = common dso_local global i32 0, align 4
@shtc1_cmd_measure_blocking_lpm = common dso_local global i32 0, align 4
@shtc1_cmd_measure_nonblocking_lpm = common dso_local global i32 0, align 4
@SHTC1_NONBLOCKING_WAIT_TIME_LPM = common dso_local global i32 0, align 4
@SHTC3_NONBLOCKING_WAIT_TIME_LPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shtc1_data*)* @shtc1_select_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shtc1_select_command(%struct.shtc1_data* %0) #0 {
  %2 = alloca %struct.shtc1_data*, align 8
  store %struct.shtc1_data* %0, %struct.shtc1_data** %2, align 8
  %3 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %4 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %10 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @shtc1_cmd_measure_blocking_hpm, align 4
  br label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @shtc1_cmd_measure_nonblocking_hpm, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %21 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %23 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @shtc1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @SHTC1_NONBLOCKING_WAIT_TIME_HPM, align 4
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @SHTC3_NONBLOCKING_WAIT_TIME_HPM, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %34 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %62

35:                                               ; preds = %1
  %36 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %37 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @shtc1_cmd_measure_blocking_lpm, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @shtc1_cmd_measure_nonblocking_lpm, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %48 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %50 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @shtc1, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @SHTC1_NONBLOCKING_WAIT_TIME_LPM, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @SHTC3_NONBLOCKING_WAIT_TIME_LPM, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.shtc1_data*, %struct.shtc1_data** %2, align 8
  %61 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
