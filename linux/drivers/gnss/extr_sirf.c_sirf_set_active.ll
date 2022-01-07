; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_set_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_set_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_data = type { i32 }

@SIRF_ACTIVATE_TIMEOUT = common dso_local global i64 0, align 8
@SIRF_HIBERNATE_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sirf_data*, i32)* @sirf_set_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_set_active(%struct.sirf_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sirf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sirf_data* %0, %struct.sirf_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 3, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @SIRF_ACTIVATE_TIMEOUT, align 8
  store i64 %12, i64* %6, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @SIRF_HIBERNATE_TIMEOUT, align 8
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %17 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %22 = call i32 @sirf_serdev_open(%struct.sirf_data* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %61

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %15
  br label %29

29:                                               ; preds = %45, %28
  %30 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %31 = call i32 @sirf_pulse_on_off(%struct.sirf_data* %30)
  %32 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @sirf_wait_for_power_state(%struct.sirf_data* %32, i32 %33, i64 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %42, 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  br i1 %46, label %29, label %47

47:                                               ; preds = %45
  %48 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %49 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.sirf_data*, %struct.sirf_data** %4, align 8
  %54 = call i32 @sirf_serdev_close(%struct.sirf_data* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58, %25
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @sirf_serdev_open(%struct.sirf_data*) #1

declare dso_local i32 @sirf_pulse_on_off(%struct.sirf_data*) #1

declare dso_local i32 @sirf_wait_for_power_state(%struct.sirf_data*, i32, i64) #1

declare dso_local i32 @sirf_serdev_close(%struct.sirf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
