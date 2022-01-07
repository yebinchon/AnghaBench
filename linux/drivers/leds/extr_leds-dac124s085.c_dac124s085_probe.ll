; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-dac124s085.c_dac124s085_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-dac124s085.c_dac124s085_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.dac124s085 = type { %struct.dac124s085_led* }
%struct.dac124s085_led = type { i32, %struct.TYPE_3__, i32, i32, %struct.spi_device* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dac124s085-%d\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@dac124s085_set_brightness = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dac124s085_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac124s085_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.dac124s085*, align 8
  %5 = alloca %struct.dac124s085_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dac124s085* @devm_kzalloc(i32* %9, i32 8, i32 %10)
  store %struct.dac124s085* %11, %struct.dac124s085** %4, align 8
  %12 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %13 = icmp ne %struct.dac124s085* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %97

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  store i32 16, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %74, %17
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %23 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %22, i32 0, i32 0
  %24 = load %struct.dac124s085_led*, %struct.dac124s085_led** %23, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.dac124s085_led* %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %20
  %28 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %29 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %28, i32 0, i32 0
  %30 = load %struct.dac124s085_led*, %struct.dac124s085_led** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %30, i64 %32
  store %struct.dac124s085_led* %33, %struct.dac124s085_led** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %36 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %39 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %38, i32 0, i32 4
  store %struct.spi_device* %37, %struct.spi_device** %39, align 8
  %40 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %41 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @snprintf(i32 %42, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %46 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %45, i32 0, i32 3
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %49 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %52 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @LED_OFF, align 4
  %55 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %56 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %59 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 4095, i32* %60, align 4
  %61 = load i32, i32* @dac124s085_set_brightness, align 4
  %62 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %63 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = load %struct.dac124s085_led*, %struct.dac124s085_led** %5, align 8
  %68 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %67, i32 0, i32 1
  %69 = call i32 @led_classdev_register(i32* %66, %struct.TYPE_3__* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %27
  br label %81

73:                                               ; preds = %27
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %20

77:                                               ; preds = %20
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %80 = call i32 @spi_set_drvdata(%struct.spi_device* %78, %struct.dac124s085* %79)
  store i32 0, i32* %2, align 4
  br label %97

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %86, %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.dac124s085*, %struct.dac124s085** %4, align 8
  %88 = getelementptr inbounds %struct.dac124s085, %struct.dac124s085* %87, i32 0, i32 0
  %89 = load %struct.dac124s085_led*, %struct.dac124s085_led** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %89, i64 %91
  %93 = getelementptr inbounds %struct.dac124s085_led, %struct.dac124s085_led* %92, i32 0, i32 1
  %94 = call i32 @led_classdev_unregister(%struct.TYPE_3__* %93)
  br label %82

95:                                               ; preds = %82
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %77, %14
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.dac124s085* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dac124s085_led*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.dac124s085*) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
