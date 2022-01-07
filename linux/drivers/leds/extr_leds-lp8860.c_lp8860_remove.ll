; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lp8860_led = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to disable regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lp8860_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8860_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lp8860_led*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lp8860_led* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lp8860_led* %6, %struct.lp8860_led** %3, align 8
  %7 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %8 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %13 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gpiod_direction_output(i64 %14, i32 0)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %18 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %23 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @regulator_disable(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %30 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %21
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %37 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %36, i32 0, i32 0
  %38 = call i32 @mutex_destroy(i32* %37)
  ret i32 0
}

declare dso_local %struct.lp8860_led* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
