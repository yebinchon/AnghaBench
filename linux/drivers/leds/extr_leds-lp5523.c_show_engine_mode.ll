; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_show_engine_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_show_engine_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"run\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"load\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i32)* @show_engine_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_engine_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lp55xx_led*, align 8
  %11 = alloca %struct.lp55xx_chip*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_i2c_client(%struct.device* %13)
  %15 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %14)
  store %struct.lp55xx_led* %15, %struct.lp55xx_led** %10, align 8
  %16 = load %struct.lp55xx_led*, %struct.lp55xx_led** %10, align 8
  %17 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %16, i32 0, i32 0
  %18 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %17, align 8
  store %struct.lp55xx_chip* %18, %struct.lp55xx_chip** %11, align 8
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %20 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %36 [
    i32 128, label %29
    i32 129, label %32
    i32 130, label %35
  ]

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %5, align 4
  br label %39

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %4, %35
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %32, %29
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
