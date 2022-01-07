; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_adjust_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_adjust_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_i2c = type { i64, i64 }

@polling_req = common dso_local global i64 0, align 8
@NO_DATA_THRES = common dso_local global i64 0, align 8
@NO_DATA_SLEEP_MSECS = common dso_local global i64 0, align 8
@THREAD_IRQ_SLEEP_MSECS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.synaptics_i2c*, i32)* @synaptics_i2c_adjust_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @synaptics_i2c_adjust_delay(%struct.synaptics_i2c* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.synaptics_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.synaptics_i2c* %0, %struct.synaptics_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @polling_req, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %12 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %18 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %38

19:                                               ; preds = %10
  %20 = load i64, i64* @NO_DATA_THRES, align 8
  %21 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %22 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %20, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %26 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.synaptics_i2c*, %struct.synaptics_i2c** %4, align 8
  %32 = getelementptr inbounds %struct.synaptics_i2c, %struct.synaptics_i2c* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %37

35:                                               ; preds = %19
  %36 = load i64, i64* @NO_DATA_SLEEP_MSECS, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @msecs_to_jiffies(i64 %39)
  store i64 %40, i64* %3, align 8
  br label %46

41:                                               ; preds = %2
  %42 = load i64, i64* @THREAD_IRQ_SLEEP_MSECS, align 8
  %43 = call i64 @msecs_to_jiffies(i64 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @round_jiffies_relative(i64 %44)
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @round_jiffies_relative(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
