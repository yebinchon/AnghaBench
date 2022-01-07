; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_ts_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_ts_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.ts4800_ts* }
%struct.ts4800_ts = type { i32, i32, i32, i32, i32, i32 }

@DEBOUNCE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to enable touchscreen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @ts4800_ts_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts4800_ts_open(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.ts4800_ts*, align 8
  %4 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %5 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %6 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %5, i32 0, i32 0
  %7 = load %struct.ts4800_ts*, %struct.ts4800_ts** %6, align 8
  store %struct.ts4800_ts* %7, %struct.ts4800_ts** %3, align 8
  %8 = load %struct.ts4800_ts*, %struct.ts4800_ts** %3, align 8
  %9 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @DEBOUNCE_COUNT, align 4
  %11 = load %struct.ts4800_ts*, %struct.ts4800_ts** %3, align 8
  %12 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ts4800_ts*, %struct.ts4800_ts** %3, align 8
  %14 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ts4800_ts*, %struct.ts4800_ts** %3, align 8
  %17 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ts4800_ts*, %struct.ts4800_ts** %3, align 8
  %20 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ts4800_ts*, %struct.ts4800_ts** %3, align 8
  %23 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_update_bits(i32 %15, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.ts4800_ts*, %struct.ts4800_ts** %3, align 8
  %30 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_warn(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
