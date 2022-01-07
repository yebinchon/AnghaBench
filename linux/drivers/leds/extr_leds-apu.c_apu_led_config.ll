; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-apu.c_apu_led_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-apu.c_apu_led_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.apu_led_priv* }
%struct.apu_led_priv = type { %struct.led_classdev, %struct.TYPE_5__ }
%struct.led_classdev = type { i32, i32 (%struct.led_classdev*, i32)*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.apu_led_pdata = type { i32 }

@apu1_led_profile = common dso_local global %struct.TYPE_7__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@apu_led = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@APU1_IOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.apu_led_pdata*)* @apu_led_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apu_led_config(%struct.device* %0, %struct.apu_led_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.apu_led_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.apu_led_priv*, align 8
  %9 = alloca %struct.led_classdev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.apu_led_pdata* %1, %struct.apu_led_pdata** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @apu1_led_profile, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.apu_led_priv* @devm_kcalloc(%struct.device* %10, i32 %12, i32 40, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @apu_led, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.apu_led_priv* %14, %struct.apu_led_priv** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @apu_led, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.apu_led_priv*, %struct.apu_led_priv** %18, align 8
  %20 = icmp ne %struct.apu_led_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %118

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %98, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @apu1_led_profile, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %101

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @apu_led, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.apu_led_priv*, %struct.apu_led_priv** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.apu_led_priv, %struct.apu_led_priv* %33, i64 %35
  store %struct.apu_led_priv* %36, %struct.apu_led_priv** %8, align 8
  %37 = load %struct.apu_led_priv*, %struct.apu_led_priv** %8, align 8
  %38 = getelementptr inbounds %struct.apu_led_priv, %struct.apu_led_priv* %37, i32 0, i32 0
  store %struct.led_classdev* %38, %struct.led_classdev** %9, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @apu1_led_profile, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %46 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @apu1_led_profile, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %54 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %56 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %58 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %59 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %61 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %60, i32 0, i32 1
  store i32 (%struct.led_classdev*, i32)* @apu1_led_brightness_set, i32 (%struct.led_classdev*, i32)** %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @apu1_led_profile, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @APU1_IOSIZE, align 4
  %70 = call i32 @devm_ioremap(%struct.device* %62, i32 %68, i32 %69)
  %71 = load %struct.apu_led_priv*, %struct.apu_led_priv** %8, align 8
  %72 = getelementptr inbounds %struct.apu_led_priv, %struct.apu_led_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.apu_led_priv*, %struct.apu_led_priv** %8, align 8
  %75 = getelementptr inbounds %struct.apu_led_priv, %struct.apu_led_priv* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %30
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %102

82:                                               ; preds = %30
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %85 = call i32 @led_classdev_register(%struct.device* %83, %struct.led_classdev* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %102

89:                                               ; preds = %82
  %90 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @apu1_led_profile, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @apu1_led_brightness_set(%struct.led_classdev* %90, i32 %96)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %25

101:                                              ; preds = %25
  store i32 0, i32* %3, align 4
  br label %118

102:                                              ; preds = %88, %79
  br label %103

103:                                              ; preds = %107, %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %6, align 4
  %106 = icmp sgt i32 %104, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @apu_led, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.apu_led_priv*, %struct.apu_led_priv** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.apu_led_priv, %struct.apu_led_priv* %110, i64 %112
  %114 = getelementptr inbounds %struct.apu_led_priv, %struct.apu_led_priv* %113, i32 0, i32 0
  %115 = call i32 @led_classdev_unregister(%struct.led_classdev* %114)
  br label %103

116:                                              ; preds = %103
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %101, %21
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.apu_led_priv* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @apu1_led_brightness_set(%struct.led_classdev*, i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @led_classdev_register(%struct.device*, %struct.led_classdev*) #1

declare dso_local i32 @led_classdev_unregister(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
