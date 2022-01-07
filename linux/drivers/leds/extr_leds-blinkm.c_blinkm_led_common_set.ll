; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_led_common_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_led_common_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.blinkm_led = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.blinkm_data = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"BlinkM: unknown color.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BLM_GO_RGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"# DONE # next_red = %d, next_green = %d, next_blue = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32, i32)* @blinkm_led_common_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blinkm_led_common_set(%struct.led_classdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blinkm_led*, align 8
  %9 = alloca %struct.blinkm_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %11 = call %struct.blinkm_led* @cdev_to_blmled(%struct.led_classdev* %10)
  store %struct.blinkm_led* %11, %struct.blinkm_led** %8, align 8
  %12 = load %struct.blinkm_led*, %struct.blinkm_led** %8, align 8
  %13 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call %struct.blinkm_data* @i2c_get_clientdata(%struct.TYPE_3__* %14)
  store %struct.blinkm_data* %15, %struct.blinkm_data** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %62 [
    i32 128, label %17
    i32 129, label %32
    i32 130, label %47
  ]

17:                                               ; preds = %3
  %18 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %19 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = icmp eq i8* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %90

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %31 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %70

32:                                               ; preds = %3
  %33 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %34 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = icmp eq i8* %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %90

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %46 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %70

47:                                               ; preds = %3
  %48 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %49 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = icmp eq i8* %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %90

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %61 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %70

62:                                               ; preds = %3
  %63 = load %struct.blinkm_led*, %struct.blinkm_led** %8, align 8
  %64 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %90

70:                                               ; preds = %56, %41, %26
  %71 = load %struct.blinkm_led*, %struct.blinkm_led** %8, align 8
  %72 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* @BLM_GO_RGB, align 4
  %75 = call i32 @blinkm_transfer_hw(%struct.TYPE_3__* %73, i32 %74)
  %76 = load %struct.blinkm_led*, %struct.blinkm_led** %8, align 8
  %77 = getelementptr inbounds %struct.blinkm_led, %struct.blinkm_led* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %81 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %84 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.blinkm_data*, %struct.blinkm_data** %9, align 8
  %87 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @dev_dbg(i32* %79, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %82, i8* %85, i8* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %70, %62, %55, %40, %25
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.blinkm_led* @cdev_to_blmled(%struct.led_classdev*) #1

declare dso_local %struct.blinkm_data* @i2c_get_clientdata(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @blinkm_transfer_hw(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
