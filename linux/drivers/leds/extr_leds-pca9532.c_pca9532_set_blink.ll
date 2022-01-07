; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_set_blink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_set_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.pca9532_led = type { i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCA9532_PWM0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @pca9532_set_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_set_blink(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pca9532_led*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %13 = call %struct.pca9532_led* @ldev_to_led(%struct.led_classdev* %12)
  store %struct.pca9532_led* %13, %struct.pca9532_led** %8, align 8
  %14 = load %struct.pca9532_led*, %struct.pca9532_led** %8, align 8
  %15 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %14, i32 0, i32 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64*, i64** %6, align 8
  store i64 1000, i64* %25, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 1000, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %20, %3
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %35, 1690
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %39, 6
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33, %27
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %75

44:                                               ; preds = %37
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %46, 152
  %48 = sub i64 %47, 1
  %49 = udiv i64 %48, 1000
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %54 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pca9532_calcpwm(%struct.i2c_client* %51, i32 0, i32 %52, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %44
  %62 = load %struct.pca9532_led*, %struct.pca9532_led** %8, align 8
  %63 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PCA9532_PWM0, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.pca9532_led*, %struct.pca9532_led** %8, align 8
  %69 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %68, i32 0, i32 1
  %70 = load %struct.i2c_client*, %struct.i2c_client** %69, align 8
  %71 = call i32 @pca9532_setpwm(%struct.i2c_client* %70, i32 0)
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.pca9532_led*, %struct.pca9532_led** %8, align 8
  %74 = call i32 @pca9532_setled(%struct.pca9532_led* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %59, %41
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.pca9532_led* @ldev_to_led(%struct.led_classdev*) #1

declare dso_local i32 @pca9532_calcpwm(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @pca9532_setpwm(%struct.i2c_client*, i32) #1

declare dso_local i32 @pca9532_setled(%struct.pca9532_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
