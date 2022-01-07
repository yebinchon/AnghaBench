; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_store_engine_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_store_engine_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32, i32, %struct.lp55xx_engine* }
%struct.lp55xx_engine = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"run\00", align 1
@LP55XX_ENGINE_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@LP55XX_ENGINE_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@LP55XX_ENGINE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64, i32)* @store_engine_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_engine_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lp55xx_led*, align 8
  %12 = alloca %struct.lp55xx_chip*, align 8
  %13 = alloca %struct.lp55xx_engine*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_i2c_client(%struct.device* %14)
  %16 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %15)
  store %struct.lp55xx_led* %16, %struct.lp55xx_led** %11, align 8
  %17 = load %struct.lp55xx_led*, %struct.lp55xx_led** %11, align 8
  %18 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %17, i32 0, i32 0
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %18, align 8
  store %struct.lp55xx_chip* %19, %struct.lp55xx_chip** %12, align 8
  %20 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %21 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %20, i32 0, i32 2
  %22 = load %struct.lp55xx_engine*, %struct.lp55xx_engine** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.lp55xx_engine, %struct.lp55xx_engine* %22, i64 %25
  store %struct.lp55xx_engine* %26, %struct.lp55xx_engine** %13, align 8
  %27 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %28 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %32 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %5
  %37 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %38 = call i32 @lp5523_run_engine(%struct.lp55xx_chip* %37, i32 1)
  %39 = load i32, i32* @LP55XX_ENGINE_RUN, align 4
  %40 = load %struct.lp55xx_engine*, %struct.lp55xx_engine** %13, align 8
  %41 = getelementptr inbounds %struct.lp55xx_engine, %struct.lp55xx_engine* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %66

42:                                               ; preds = %5
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %48 = call i32 @lp5523_stop_engine(%struct.lp55xx_chip* %47)
  %49 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %50 = call i32 @lp5523_load_engine(%struct.lp55xx_chip* %49)
  %51 = load i32, i32* @LP55XX_ENGINE_LOAD, align 4
  %52 = load %struct.lp55xx_engine*, %struct.lp55xx_engine** %13, align 8
  %53 = getelementptr inbounds %struct.lp55xx_engine, %struct.lp55xx_engine* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %65

54:                                               ; preds = %42
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %60 = call i32 @lp5523_stop_engine(%struct.lp55xx_chip* %59)
  %61 = load i32, i32* @LP55XX_ENGINE_DISABLED, align 4
  %62 = load %struct.lp55xx_engine*, %struct.lp55xx_engine** %13, align 8
  %63 = getelementptr inbounds %struct.lp55xx_engine, %struct.lp55xx_engine* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %54
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %12, align 8
  %68 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i64, i64* %9, align 8
  ret i64 %70
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @lp5523_run_engine(%struct.lp55xx_chip*, i32) #1

declare dso_local i32 @lp5523_stop_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp5523_load_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
