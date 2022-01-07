; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_try_start_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_try_start_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i64, i32, i32, i32 }

@MAX_QSFP_RETRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"QSFP not responding, giving up\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"QSFP not responding, waiting and retrying %d\0A\00", align 1
@QSFP_RETRY_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @try_start_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_start_link(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %3 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %4 = call i64 @test_qsfp_read(%struct.hfi1_pportdata* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAX_QSFP_RETRIES, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %14 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dd_dev_err(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %43

17:                                               ; preds = %6
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %22 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @dd_dev_info(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %27 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %31 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %33, i32 0, i32 1
  %35 = load i32, i32* @QSFP_RETRY_WAIT, align 4
  %36 = call i32 @msecs_to_jiffies(i32 %35)
  %37 = call i32 @queue_delayed_work(i32 %32, i32* %34, i32 %36)
  br label %43

38:                                               ; preds = %1
  %39 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %40 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %42 = call i32 @start_link(%struct.hfi1_pportdata* %41)
  br label %43

43:                                               ; preds = %38, %17, %12
  ret void
}

declare dso_local i64 @test_qsfp_read(%struct.hfi1_pportdata*) #1

declare dso_local i32 @dd_dev_err(i32, i8*) #1

declare dso_local i32 @dd_dev_info(i32, i8*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @start_link(%struct.hfi1_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
