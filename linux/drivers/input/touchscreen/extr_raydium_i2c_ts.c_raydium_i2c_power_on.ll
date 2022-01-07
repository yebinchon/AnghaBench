; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raydium_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to enable avdd regulator: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to enable vccio regulator: %d\0A\00", align 1
@RM_POWERON_DELAY_USEC = common dso_local global i32 0, align 4
@RM_RESET_DELAY_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raydium_data*)* @raydium_i2c_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_power_on(%struct.raydium_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raydium_data*, align 8
  %4 = alloca i32, align 4
  store %struct.raydium_data* %0, %struct.raydium_data** %3, align 8
  %5 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %6 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

10:                                               ; preds = %1
  %11 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %12 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @gpiod_set_value_cansleep(i32 %13, i32 1)
  %15 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %16 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @regulator_enable(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %10
  %22 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %23 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %49

28:                                               ; preds = %10
  %29 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %30 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_enable(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %37 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @regulator_disable(i32 %38)
  %40 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %41 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %49

46:                                               ; preds = %28
  %47 = load i32, i32* @RM_POWERON_DELAY_USEC, align 4
  %48 = call i32 @udelay(i32 %47)
  br label %49

49:                                               ; preds = %46, %35, %21
  %50 = load %struct.raydium_data*, %struct.raydium_data** %3, align 8
  %51 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @gpiod_set_value_cansleep(i32 %52, i32 0)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @RM_RESET_DELAY_MSEC, align 4
  %60 = call i32 @msleep(i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %56, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
