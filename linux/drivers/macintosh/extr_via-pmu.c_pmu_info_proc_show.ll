; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_info_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_info_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"PMU driver version     : %d\0A\00", align 1
@PMU_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PMU firmware version   : %02x\0A\00", align 1
@pmu_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"AC Power               : %d\0A\00", align 1
@pmu_power_flags = common dso_local global i32 0, align 4
@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@pmu_battery_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Battery count          : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pmu_info_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_info_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load i32, i32* @PMU_DRIVER_VERSION, align 4
  %7 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load i32, i32* @pmu_version, align 4
  %10 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i32, i32* @pmu_power_flags, align 4
  %13 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @pmu_battery_count, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i1 [ true, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i32, i32* @pmu_battery_count, align 4
  %25 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
