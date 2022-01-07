; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_get_gpiod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-gpio.c_gpio_led_get_gpiod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }
%struct.gpio_led = type { i32, i32, i64 }

@GPIOF_OUT_INIT_LOW = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GPIOF_ACTIVE_LOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device*, i32, %struct.gpio_led*)* @gpio_led_get_gpiod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @gpio_led_get_gpiod(%struct.device* %0, i32 %1, %struct.gpio_led* %2) #0 {
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_led*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.gpio_led* %2, %struct.gpio_led** %7, align 8
  %11 = load i64, i64* @GPIOF_OUT_INIT_LOW, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %12, i32* null, i32 %13, i64 %14)
  store %struct.gpio_desc* %15, %struct.gpio_desc** %8, align 8
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %17 = call i32 @IS_ERR(%struct.gpio_desc* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %21 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %22 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_set_consumer_name(%struct.gpio_desc* %20, i32 %23)
  %25 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  store %struct.gpio_desc* %25, %struct.gpio_desc** %4, align 8
  br label %81

26:                                               ; preds = %3
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.gpio_desc* %27)
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  store %struct.gpio_desc* %33, %struct.gpio_desc** %4, align 8
  br label %81

34:                                               ; preds = %26
  %35 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %36 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gpio_is_valid(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.gpio_desc* @ERR_PTR(i32 %42)
  store %struct.gpio_desc* %43, %struct.gpio_desc** %4, align 8
  br label %81

44:                                               ; preds = %34
  %45 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %46 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* @GPIOF_ACTIVE_LOW, align 8
  %51 = load i64, i64* %9, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %56 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %60 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @devm_gpio_request_one(%struct.device* %54, i32 %57, i64 %58, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = call %struct.gpio_desc* @ERR_PTR(i32 %66)
  store %struct.gpio_desc* %67, %struct.gpio_desc** %4, align 8
  br label %81

68:                                               ; preds = %53
  %69 = load %struct.gpio_led*, %struct.gpio_led** %7, align 8
  %70 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.gpio_desc* @gpio_to_desc(i32 %71)
  store %struct.gpio_desc* %72, %struct.gpio_desc** %8, align 8
  %73 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %74 = icmp ne %struct.gpio_desc* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.gpio_desc* @ERR_PTR(i32 %77)
  store %struct.gpio_desc* %78, %struct.gpio_desc** %4, align 8
  br label %81

79:                                               ; preds = %68
  %80 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  store %struct.gpio_desc* %80, %struct.gpio_desc** %4, align 8
  br label %81

81:                                               ; preds = %79, %75, %65, %40, %32, %19
  %82 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  ret %struct.gpio_desc* %82
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i32*, i32, i64) #1

declare dso_local i32 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_set_consumer_name(%struct.gpio_desc*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i64, i32) #1

declare dso_local %struct.gpio_desc* @gpio_to_desc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
