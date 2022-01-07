; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pwm.c_led_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pwm.c_led_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.led_pwm_platform_data = type { i32, i32* }
%struct.led_pwm_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@leds = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @led_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.led_pwm_platform_data*, align 8
  %5 = alloca %struct.led_pwm_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.led_pwm_platform_data* @dev_get_platdata(i32* %10)
  store %struct.led_pwm_platform_data* %11, %struct.led_pwm_platform_data** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %13 = icmp ne %struct.led_pwm_platform_data* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.led_pwm_platform_data, %struct.led_pwm_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @device_get_child_node_count(i32* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %83

28:                                               ; preds = %22
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %5, align 8
  %32 = load i32, i32* @leds, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @struct_size(%struct.led_pwm_priv* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.led_pwm_priv* @devm_kzalloc(i32* %30, i32 %34, i32 %35)
  store %struct.led_pwm_priv* %36, %struct.led_pwm_priv** %5, align 8
  %37 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %5, align 8
  %38 = icmp ne %struct.led_pwm_priv* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %83

42:                                               ; preds = %28
  %43 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %44 = icmp ne %struct.led_pwm_platform_data* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %5, align 8
  %54 = load %struct.led_pwm_platform_data*, %struct.led_pwm_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.led_pwm_platform_data, %struct.led_pwm_platform_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @led_pwm_add(i32* %52, %struct.led_pwm_priv* %53, i32* %59, i32* null)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %68

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %46

68:                                               ; preds = %63, %46
  br label %74

69:                                               ; preds = %42
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %5, align 8
  %73 = call i32 @led_pwm_create_fwnode(i32* %71, %struct.led_pwm_priv* %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %83

79:                                               ; preds = %74
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.led_pwm_priv*, %struct.led_pwm_priv** %5, align 8
  %82 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.led_pwm_priv* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %77, %39, %25
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.led_pwm_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @device_get_child_node_count(i32*) #1

declare dso_local %struct.led_pwm_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.led_pwm_priv*, i32, i32) #1

declare dso_local i32 @led_pwm_add(i32*, %struct.led_pwm_priv*, i32*, i32*) #1

declare dso_local i32 @led_pwm_create_fwnode(i32*, %struct.led_pwm_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.led_pwm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
