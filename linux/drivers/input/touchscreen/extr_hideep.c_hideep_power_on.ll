; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to enable 'vdd' regulator: %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to enable 'vcc_vid' regulator: %d\00", align 1
@HIDEEP_RESET_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to send 'reset' command: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hideep_ts*)* @hideep_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hideep_power_on(%struct.hideep_ts* %0) #0 {
  %2 = alloca %struct.hideep_ts*, align 8
  %3 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %5 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @regulator_enable(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %12 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = call i32 @usleep_range(i32 999, i32 1000)
  %19 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %20 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @regulator_enable(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %27 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %17
  %33 = call i32 @msleep(i32 30)
  %34 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %35 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %40 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpiod_set_value_cansleep(i64 %41, i32 0)
  br label %59

43:                                               ; preds = %32
  %44 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %45 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HIDEEP_RESET_CMD, align 4
  %48 = call i32 @regmap_write(i32 %46, i32 %47, i32 1)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %53 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %43
  br label %59

59:                                               ; preds = %58, %38
  %60 = call i32 @msleep(i32 50)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
