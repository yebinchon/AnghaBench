; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zl6100_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zl6100_data*)* @zl6100_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zl6100_wait(%struct.zl6100_data* %0) #0 {
  %2 = alloca %struct.zl6100_data*, align 8
  %3 = alloca i64, align 8
  store %struct.zl6100_data* %0, %struct.zl6100_data** %2, align 8
  %4 = load %struct.zl6100_data*, %struct.zl6100_data** %2, align 8
  %5 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = call i32 (...) @ktime_get()
  %10 = load %struct.zl6100_data*, %struct.zl6100_data** %2, align 8
  %11 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @ktime_us_delta(i32 %9, i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.zl6100_data*, %struct.zl6100_data** %2, align 8
  %16 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %8
  %20 = load %struct.zl6100_data*, %struct.zl6100_data** %2, align 8
  %21 = getelementptr inbounds %struct.zl6100_data, %struct.zl6100_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = sub nsw i64 %22, %23
  %25 = call i32 @udelay(i64 %24)
  br label %26

26:                                               ; preds = %19, %8
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
