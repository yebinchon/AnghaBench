; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_start_led_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_start_led_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, %struct.TYPE_6__, i8**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@HFI1_INITTED = common dso_local global i32 0, align 4
@run_led_override = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_start_led_override(%struct.hfi1_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %8 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %7, i32 0, i32 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HFI1_INITTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %52

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @msecs_to_jiffies(i32 %17)
  %19 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %20 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %19, i32 0, i32 3
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %18, i8** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @msecs_to_jiffies(i32 %23)
  %25 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %26 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %25, i32 0, i32 3
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %24, i8** %28, align 8
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %30 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %32 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %31, i32 0, i32 2
  %33 = call i32 @timer_pending(%struct.TYPE_6__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %16
  %36 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %37 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %36, i32 0, i32 2
  %38 = load i32, i32* @run_led_override, align 4
  %39 = call i32 @timer_setup(%struct.TYPE_6__* %37, i32 %38, i32 0)
  %40 = load i64, i64* @jiffies, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %43 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %46 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %45, i32 0, i32 2
  %47 = call i32 @add_timer(%struct.TYPE_6__* %46)
  %48 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %4, align 8
  %49 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %48, i32 0, i32 1
  %50 = call i32 @atomic_set(i32* %49, i32 1)
  %51 = call i32 (...) @smp_wmb()
  br label %52

52:                                               ; preds = %15, %35, %16
  ret void
}

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @timer_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
