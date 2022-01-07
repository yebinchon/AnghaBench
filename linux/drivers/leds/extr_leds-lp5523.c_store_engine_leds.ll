; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_store_engine_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_store_engine_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32, i32, %struct.lp55xx_engine* }
%struct.lp55xx_engine = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@LP55XX_ENGINE_LOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64, i32)* @store_engine_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_engine_leds(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lp55xx_led*, align 8
  %13 = alloca %struct.lp55xx_chip*, align 8
  %14 = alloca %struct.lp55xx_engine*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call i32 @to_i2c_client(%struct.device* %17)
  %19 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %18)
  store %struct.lp55xx_led* %19, %struct.lp55xx_led** %12, align 8
  %20 = load %struct.lp55xx_led*, %struct.lp55xx_led** %12, align 8
  %21 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %20, i32 0, i32 0
  %22 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %21, align 8
  store %struct.lp55xx_chip* %22, %struct.lp55xx_chip** %13, align 8
  %23 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %13, align 8
  %24 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %23, i32 0, i32 2
  %25 = load %struct.lp55xx_engine*, %struct.lp55xx_engine** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lp55xx_engine, %struct.lp55xx_engine* %25, i64 %28
  store %struct.lp55xx_engine* %29, %struct.lp55xx_engine** %14, align 8
  store i32 0, i32* %15, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @lp5523_mux_parse(i8* %30, i32* %15, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %6, align 8
  br label %66

37:                                               ; preds = %5
  %38 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %13, align 8
  %39 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %13, align 8
  %43 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %16, align 8
  %46 = load %struct.lp55xx_engine*, %struct.lp55xx_engine** %14, align 8
  %47 = getelementptr inbounds %struct.lp55xx_engine, %struct.lp55xx_engine* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LP55XX_ENGINE_LOAD, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %61

52:                                               ; preds = %37
  %53 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %13, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @lp5523_load_mux(%struct.lp55xx_chip* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %61

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %16, align 8
  br label %61

61:                                               ; preds = %59, %58, %51
  %62 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %13, align 8
  %63 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %16, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %61, %34
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i64 @lp5523_mux_parse(i8*, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @lp5523_load_mux(%struct.lp55xx_chip*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
