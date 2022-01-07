; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_store_engine_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_store_engine_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%lu: invalid engine index. (1, 2, 3)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"request firmware err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lp55xx_store_engine_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp55xx_store_engine_select(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lp55xx_led*, align 8
  %11 = alloca %struct.lp55xx_chip*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_i2c_client(%struct.device* %14)
  %16 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %15)
  store %struct.lp55xx_led* %16, %struct.lp55xx_led** %10, align 8
  %17 = load %struct.lp55xx_led*, %struct.lp55xx_led** %10, align 8
  %18 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %17, i32 0, i32 0
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %18, align 8
  store %struct.lp55xx_chip* %19, %struct.lp55xx_chip** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 0, i64* %12)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %58

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  switch i64 %27, label %40 [
    i64 130, label %28
    i64 129, label %28
    i64 128, label %28
  ]

28:                                               ; preds = %26, %26, %26
  %29 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %30 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %34 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %36 = call i32 @lp55xx_request_firmware(%struct.lp55xx_chip* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %11, align 8
  %38 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %47

40:                                               ; preds = %26
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %28
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %50, %40, %23
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp55xx_request_firmware(%struct.lp55xx_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
