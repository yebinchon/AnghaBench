; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max8997.c_max8997_led_set_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max8997.c_max8997_led_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_led = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MAX8997_LED_FLASH_SHIFT = common dso_local global i32 0, align 4
@MAX8997_LED_FLASH_CUR_MASK = common dso_local global i32 0, align 4
@MAX8997_REG_FLASH2_CUR = common dso_local global i32 0, align 4
@MAX8997_REG_FLASH1_CUR = common dso_local global i32 0, align 4
@MAX8997_LED_MOVIE_SHIFT = common dso_local global i32 0, align 4
@MAX8997_LED_MOVIE_CUR_MASK = common dso_local global i32 0, align 4
@MAX8997_REG_MOVIE_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to update register(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max8997_led*, i32)* @max8997_led_set_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_led_set_current(%struct.max8997_led* %0, i32 %1) #0 {
  %3 = alloca %struct.max8997_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max8997_led* %0, %struct.max8997_led** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %11 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %16 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %39 [
    i32 131, label %18
    i32 130, label %18
    i32 129, label %33
    i32 128, label %33
  ]

18:                                               ; preds = %2, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAX8997_LED_FLASH_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @MAX8997_LED_FLASH_CUR_MASK, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %24 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @MAX8997_REG_FLASH2_CUR, align 4
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @MAX8997_REG_FLASH1_CUR, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  br label %40

33:                                               ; preds = %2, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MAX8997_LED_MOVIE_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @MAX8997_LED_MOVIE_CUR_MASK, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @MAX8997_REG_MOVIE_CUR, align 4
  store i32 %38, i32* %9, align 4
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %33, %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @max8997_update_reg(%struct.i2c_client* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %53 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %40
  ret void
}

declare dso_local i32 @max8997_update_reg(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
