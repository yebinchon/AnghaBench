; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_wait_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2563.c_tsl2563_wait_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsl2563_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TSL2563_TIMING_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsl2563_chip*)* @tsl2563_wait_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsl2563_wait_adc(%struct.tsl2563_chip* %0) #0 {
  %2 = alloca %struct.tsl2563_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.tsl2563_chip* %0, %struct.tsl2563_chip** %2, align 8
  %4 = load %struct.tsl2563_chip*, %struct.tsl2563_chip** %2, align 8
  %5 = getelementptr inbounds %struct.tsl2563_chip, %struct.tsl2563_chip* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TSL2563_TIMING_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %13 [
    i32 128, label %11
    i32 129, label %12
  ]

11:                                               ; preds = %1
  store i32 14, i32* %3, align 4
  br label %14

12:                                               ; preds = %1
  store i32 101, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  store i32 402, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12, %11
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @msecs_to_jiffies(i32 %15)
  %17 = add nsw i64 %16, 2
  %18 = call i32 @schedule_timeout_interruptible(i64 %17)
  ret void
}

declare dso_local i32 @schedule_timeout_interruptible(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
