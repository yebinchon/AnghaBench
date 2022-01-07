; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_run_led_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_run_led_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i64*, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.timer_list = type { i32 }

@led_override_timer = common dso_local global i32 0, align 4
@HFI1_INITTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ppd = common dso_local global %struct.hfi1_pportdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @run_led_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_led_override(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %8 = ptrtoint %struct.hfi1_pportdata* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @led_override_timer, align 4
  %11 = call %struct.hfi1_pportdata* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.hfi1_pportdata* %11, %struct.hfi1_pportdata** %3, align 8
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %12, i32 0, i32 3
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %4, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HFI1_INITTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @setextled(%struct.hfi1_devdata* %27, i32 %28)
  %30 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %38 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %45, i32 0, i32 2
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %47, %48
  %50 = call i32 @mod_timer(i32* %46, i64 %49)
  br label %51

51:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.hfi1_pportdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @setextled(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
