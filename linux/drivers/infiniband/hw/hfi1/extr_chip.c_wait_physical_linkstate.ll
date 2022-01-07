; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_physical_linkstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_physical_linkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"timeout waiting for phy link state 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, i64, i32)* @wait_physical_linkstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_physical_linkstate(%struct.hfi1_pportdata* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  %13 = add i64 %10, %12
  store i64 %13, i64* %9, align 8
  br label %14

14:                                               ; preds = %3, %36
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @read_physical_state(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %38

23:                                               ; preds = %14
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @time_after(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %30 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @dd_dev_err(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %23
  %37 = call i32 @usleep_range(i32 1950, i32 2050)
  br label %14

38:                                               ; preds = %22
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @log_state_transition(%struct.hfi1_pportdata* %39, i64 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @read_physical_state(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dd_dev_err(i32, i8*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @log_state_transition(%struct.hfi1_pportdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
