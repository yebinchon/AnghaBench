; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_unlock_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_unlock_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8860_led = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LP8860_UNLOCK_EEPROM = common dso_local global i32 0, align 4
@LP8860_EEPROM_UNLOCK = common dso_local global i32 0, align 4
@LP8860_EEPROM_CODE_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EEPROM Unlock failed\0A\00", align 1
@LP8860_EEPROM_CODE_2 = common dso_local global i32 0, align 4
@LP8860_EEPROM_CODE_3 = common dso_local global i32 0, align 4
@LP8860_LOCK_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8860_led*, i32)* @lp8860_unlock_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8860_unlock_eeprom(%struct.lp8860_led* %0, i32 %1) #0 {
  %3 = alloca %struct.lp8860_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lp8860_led* %0, %struct.lp8860_led** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %7 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LP8860_UNLOCK_EEPROM, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %2
  %13 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %14 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LP8860_EEPROM_UNLOCK, align 4
  %17 = load i32, i32* @LP8860_EEPROM_CODE_1, align 4
  %18 = call i32 @regmap_write(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %23 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %66

27:                                               ; preds = %12
  %28 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %29 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LP8860_EEPROM_UNLOCK, align 4
  %32 = load i32, i32* @LP8860_EEPROM_CODE_2, align 4
  %33 = call i32 @regmap_write(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %38 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %66

42:                                               ; preds = %27
  %43 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %44 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LP8860_EEPROM_UNLOCK, align 4
  %47 = load i32, i32* @LP8860_EEPROM_CODE_3, align 4
  %48 = call i32 @regmap_write(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %53 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %66

57:                                               ; preds = %42
  br label %65

58:                                               ; preds = %2
  %59 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %60 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LP8860_EEPROM_UNLOCK, align 4
  %63 = load i32, i32* @LP8860_LOCK_EEPROM, align 4
  %64 = call i32 @regmap_write(i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %58, %57
  br label %66

66:                                               ; preds = %65, %51, %36, %21
  %67 = load %struct.lp8860_led*, %struct.lp8860_led** %3, align 8
  %68 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
