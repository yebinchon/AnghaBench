; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3692x.c_lm3692x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm3692x_led = type { i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@LM3692X_EN = common dso_local global i32 0, align 4
@LM3692X_DEVICE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to disable regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm3692x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3692x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm3692x_led*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.lm3692x_led* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.lm3692x_led* %7, %struct.lm3692x_led** %4, align 8
  %8 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %9 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LM3692X_EN, align 4
  %12 = load i32, i32* @LM3692X_DEVICE_EN, align 4
  %13 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %18 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %25 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %30 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpiod_direction_output(i64 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %35 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %40 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @regulator_disable(i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %47 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %38
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.lm3692x_led*, %struct.lm3692x_led** %4, align 8
  %54 = getelementptr inbounds %struct.lm3692x_led, %struct.lm3692x_led* %53, i32 0, i32 0
  %55 = call i32 @mutex_destroy(i32* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.lm3692x_led* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
