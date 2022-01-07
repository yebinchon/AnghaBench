; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_wait_for_power_state_nowakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_wait_for_power_state_nowakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_data = type { i32, i32 }

@SIRF_REPORT_CYCLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sirf_data*, i32, i64)* @sirf_wait_for_power_state_nowakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_wait_for_power_state_nowakeup(%struct.sirf_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirf_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sirf_data* %0, %struct.sirf_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @msleep(i64 %9)
  %11 = load %struct.sirf_data*, %struct.sirf_data** %5, align 8
  %12 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.sirf_data*, %struct.sirf_data** %5, align 8
  %14 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sirf_data*, %struct.sirf_data** %5, align 8
  %17 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SIRF_REPORT_CYCLE, align 4
  %20 = call i32 @msecs_to_jiffies(i32 %19)
  %21 = call i32 @wait_event_interruptible_timeout(i32 %15, i32 %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %45

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %45

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %41, %32, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
