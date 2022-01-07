; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_run_led_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_run_led_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, i64*, i64, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32 (%struct.qib_pportdata*, i32)* }
%struct.timer_list = type { i32 }

@led_override_timer = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ppd = common dso_local global %struct.qib_pportdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @qib_run_led_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_run_led_override(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %8 = ptrtoint %struct.qib_pportdata* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @led_override_timer, align 4
  %11 = call %struct.qib_pportdata* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.qib_pportdata* %11, %struct.qib_pportdata** %3, align 8
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 5
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %4, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QIB_INITTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %66

22:                                               ; preds = %1
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %24 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = and i32 %25, 1
  store i32 %27, i32* %6, align 4
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %38 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 1
  %42 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %41, align 8
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %44 = call i32 %42(%struct.qib_pportdata* %43, i32 1)
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %46 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %22
  %52 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %53 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51, %22
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %60 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %59, i32 0, i32 1
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = call i32 @mod_timer(i32* %60, i64 %64)
  br label %66

66:                                               ; preds = %21, %58, %51
  ret void
}

declare dso_local %struct.qib_pportdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
