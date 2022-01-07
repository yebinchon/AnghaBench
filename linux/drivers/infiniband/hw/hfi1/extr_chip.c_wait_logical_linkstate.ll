; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_logical_linkstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_logical_linkstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"timeout waiting for link state 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, i64, i32)* @wait_logical_linkstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_logical_linkstate(%struct.hfi1_pportdata* %0, i64 %1, i32 %2) #0 {
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
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %3, %40
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @read_logical_state(i32 %20)
  %22 = call i64 @chip_to_opa_lstate(i32 %17, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %42

27:                                               ; preds = %14
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @time_after(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @dd_dev_err(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %27
  %41 = call i32 @msleep(i32 20)
  br label %14

42:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @chip_to_opa_lstate(i32, i32) #1

declare dso_local i32 @read_logical_state(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dd_dev_err(i32, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
