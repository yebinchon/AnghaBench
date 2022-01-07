; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elants_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to enable vcc33 regulator: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to enable vccio regulator: %d\0A\00", align 1
@ELAN_POWERON_DELAY_USEC = common dso_local global i32 0, align 4
@ELAN_RESET_DELAY_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elants_data*)* @elants_i2c_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_power_on(%struct.elants_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elants_data*, align 8
  %4 = alloca i32, align 4
  store %struct.elants_data* %0, %struct.elants_data** %3, align 8
  %5 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %6 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @IS_ERR_OR_NULL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %13 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @gpiod_set_value_cansleep(i32 %14, i32 1)
  %16 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %17 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regulator_enable(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %24 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %50

29:                                               ; preds = %11
  %30 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %31 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @regulator_enable(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %38 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %44 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_disable(i32 %45)
  br label %50

47:                                               ; preds = %29
  %48 = load i32, i32* @ELAN_POWERON_DELAY_USEC, align 4
  %49 = call i32 @udelay(i32 %48)
  br label %50

50:                                               ; preds = %47, %36, %22
  %51 = load %struct.elants_data*, %struct.elants_data** %3, align 8
  %52 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @gpiod_set_value_cansleep(i32 %53, i32 0)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @ELAN_RESET_DELAY_MSEC, align 4
  %61 = call i32 @msleep(i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %57, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

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
