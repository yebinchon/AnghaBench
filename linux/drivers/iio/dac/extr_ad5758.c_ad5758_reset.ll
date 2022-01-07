; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*)* @ad5758_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_reset(%struct.ad5758_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad5758_state*, align 8
  store %struct.ad5758_state* %0, %struct.ad5758_state** %3, align 8
  %4 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %5 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %10 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @gpiod_set_value(i64 %11, i32 0)
  %13 = call i32 @usleep_range(i32 100, i32 1000)
  %14 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %15 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @gpiod_set_value(i64 %16, i32 1)
  %18 = call i32 @usleep_range(i32 100, i32 1000)
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.ad5758_state*, %struct.ad5758_state** %3, align 8
  %21 = call i32 @ad5758_soft_reset(%struct.ad5758_state* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ad5758_soft_reset(%struct.ad5758_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
