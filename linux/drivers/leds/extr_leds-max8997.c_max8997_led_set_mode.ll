; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max8997.c_max8997_led_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max8997.c_max8997_led_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_led = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_3__ = type { i8* }

@MAX8997_LED1_FLASH_MASK = common dso_local global i32 0, align 4
@MAX8997_LED0_FLASH_MASK = common dso_local global i32 0, align 4
@MAX8997_LED_FLASH_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@MAX8997_LED1_MOVIE_MASK = common dso_local global i32 0, align 4
@MAX8997_LED0_MOVIE_MASK = common dso_local global i32 0, align 4
@MAX8997_LED_MOVIE_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@MAX8997_LED1_FLASH_PIN_MASK = common dso_local global i32 0, align 4
@MAX8997_LED0_FLASH_PIN_MASK = common dso_local global i32 0, align 4
@MAX8997_LED1_MOVIE_PIN_MASK = common dso_local global i32 0, align 4
@MAX8997_LED0_MOVIE_PIN_MASK = common dso_local global i32 0, align 4
@MAX8997_LED_NONE_MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@MAX8997_REG_LEN_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to update register(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max8997_led*, i32)* @max8997_led_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_led_set_mode(%struct.max8997_led* %0, i32 %1) #0 {
  %3 = alloca %struct.max8997_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max8997_led* %0, %struct.max8997_led** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %10 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %87 [
    i32 131, label %15
    i32 129, label %33
    i32 130, label %51
    i32 128, label %69
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX8997_LED1_FLASH_MASK, align 4
  %17 = load i32, i32* @MAX8997_LED0_FLASH_MASK, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %20 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @MAX8997_LED1_FLASH_MASK, align 4
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @MAX8997_LED0_FLASH_MASK, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** @MAX8997_LED_FLASH_MAX_BRIGHTNESS, align 8
  %30 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %31 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  br label %92

33:                                               ; preds = %2
  %34 = load i32, i32* @MAX8997_LED1_MOVIE_MASK, align 4
  %35 = load i32, i32* @MAX8997_LED0_MOVIE_MASK, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %38 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @MAX8997_LED1_MOVIE_MASK, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @MAX8997_LED0_MOVIE_MASK, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %8, align 4
  %47 = load i8*, i8** @MAX8997_LED_MOVIE_MAX_BRIGHTNESS, align 8
  %48 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %49 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  br label %92

51:                                               ; preds = %2
  %52 = load i32, i32* @MAX8997_LED1_FLASH_PIN_MASK, align 4
  %53 = load i32, i32* @MAX8997_LED0_FLASH_PIN_MASK, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %56 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @MAX8997_LED1_FLASH_PIN_MASK, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @MAX8997_LED0_FLASH_PIN_MASK, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %8, align 4
  %65 = load i8*, i8** @MAX8997_LED_FLASH_MAX_BRIGHTNESS, align 8
  %66 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %67 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %92

69:                                               ; preds = %2
  %70 = load i32, i32* @MAX8997_LED1_MOVIE_PIN_MASK, align 4
  %71 = load i32, i32* @MAX8997_LED0_MOVIE_PIN_MASK, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %7, align 4
  %73 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %74 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @MAX8997_LED1_MOVIE_PIN_MASK, align 4
  br label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @MAX8997_LED0_MOVIE_PIN_MASK, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %8, align 4
  %83 = load i8*, i8** @MAX8997_LED_MOVIE_MAX_BRIGHTNESS, align 8
  %84 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %85 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  br label %92

87:                                               ; preds = %2
  %88 = load i8*, i8** @MAX8997_LED_NONE_MAX_BRIGHTNESS, align 8
  %89 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %90 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %81, %63, %45, %27
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %97 = load i32, i32* @MAX8997_REG_LEN_CNTL, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @max8997_update_reg(%struct.i2c_client* %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %105 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %103, %95
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.max8997_led*, %struct.max8997_led** %3, align 8
  %115 = getelementptr inbounds %struct.max8997_led, %struct.max8997_led* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
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
