; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_led_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_led_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.picolcd_data = type { i32, %struct.led_classdev** }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @picolcd_led_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @picolcd_led_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.picolcd_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %11 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.hid_device* @to_hid_device(%struct.device* %15)
  store %struct.hid_device* %16, %struct.hid_device** %6, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = call %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.picolcd_data* %18, %struct.picolcd_data** %7, align 8
  %19 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %20 = icmp ne %struct.picolcd_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %81

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %78, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %81

26:                                               ; preds = %23
  %27 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %28 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %29 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %28, i32 0, i32 1
  %30 = load %struct.led_classdev**, %struct.led_classdev*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.led_classdev*, %struct.led_classdev** %30, i64 %32
  %34 = load %struct.led_classdev*, %struct.led_classdev** %33, align 8
  %35 = icmp ne %struct.led_classdev* %27, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %78

37:                                               ; preds = %26
  %38 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %39 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %40, %41
  %43 = and i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @LED_OFF, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %55 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %59 = call i32 @picolcd_leds_set(%struct.picolcd_data* %58)
  br label %77

60:                                               ; preds = %47, %37
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @LED_OFF, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 1, %68
  %70 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %71 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %75 = call i32 @picolcd_leds_set(%struct.picolcd_data* %74)
  br label %76

76:                                               ; preds = %67, %64, %60
  br label %77

77:                                               ; preds = %76, %50
  br label %81

78:                                               ; preds = %36
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %23

81:                                               ; preds = %21, %77, %23
  ret void
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @picolcd_leds_set(%struct.picolcd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
