; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_phys_link_offline_substates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_phys_link_offline_substates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@PLS_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"timeout waiting for phy link offline.quiet substates. Read state 0x%x, %dms\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, i32)* @wait_phys_link_offline_substates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_phys_link_offline_substates(%struct.hfi1_pportdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  %11 = add i64 %8, %10
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %2, %36
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %14 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @read_physical_state(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 240
  %19 = load i32, i32* @PLS_OFFLINE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %38

22:                                               ; preds = %12
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @time_after(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %29 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dd_dev_err(i32 %30, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %22
  %37 = call i32 @usleep_range(i32 1950, i32 2050)
  br label %12

38:                                               ; preds = %21
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @log_state_transition(%struct.hfi1_pportdata* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @read_physical_state(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dd_dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @log_state_transition(%struct.hfi1_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
