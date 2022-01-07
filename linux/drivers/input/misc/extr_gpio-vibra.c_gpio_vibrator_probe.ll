; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-vibra.c_gpio_vibrator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-vibra.c_gpio_vibrator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_vibrator = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to request regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to request main gpio: %d\0A\00", align 1
@gpio_vibrator_play_work = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"gpio-vibrator\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@gpio_vibrator_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@gpio_vibrator_play_effect = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Couldn't create FF dev: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Couldn't register input dev: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_vibrator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_vibrator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_vibrator*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.gpio_vibrator* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.gpio_vibrator* %9, %struct.gpio_vibrator** %4, align 8
  %10 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %11 = icmp ne %struct.gpio_vibrator* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %138

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.TYPE_8__* @devm_input_allocate_device(i32* %17)
  %19 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %20 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %19, i32 0, i32 0
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %22 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %138

28:                                               ; preds = %15
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @devm_regulator_get(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %33 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR_OR_ZERO(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EPROBE_DEFER, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %138

52:                                               ; preds = %28
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %56 = call i32 @devm_gpiod_get(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %58 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %60 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR_OR_ZERO(i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %52
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @EPROBE_DEFER, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %138

77:                                               ; preds = %52
  %78 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %79 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %78, i32 0, i32 1
  %80 = load i32, i32* @gpio_vibrator_play_work, align 4
  %81 = call i32 @INIT_WORK(i32* %79, i32 %80)
  %82 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %83 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %85, align 8
  %86 = load i32, i32* @BUS_HOST, align 4
  %87 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %88 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* @gpio_vibrator_close, align 4
  %93 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %94 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 8
  %97 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %98 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %101 = call i32 @input_set_drvdata(%struct.TYPE_8__* %99, %struct.gpio_vibrator* %100)
  %102 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %103 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* @EV_FF, align 4
  %106 = load i32, i32* @FF_RUMBLE, align 4
  %107 = call i32 @input_set_capability(%struct.TYPE_8__* %104, i32 %105, i32 %106)
  %108 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %109 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* @gpio_vibrator_play_effect, align 4
  %112 = call i32 @input_ff_create_memless(%struct.TYPE_8__* %110, i32* null, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %77
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %138

121:                                              ; preds = %77
  %122 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %123 = getelementptr inbounds %struct.gpio_vibrator, %struct.gpio_vibrator* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = call i32 @input_register_device(%struct.TYPE_8__* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %138

134:                                              ; preds = %121
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = load %struct.gpio_vibrator*, %struct.gpio_vibrator** %4, align 8
  %137 = call i32 @platform_set_drvdata(%struct.platform_device* %135, %struct.gpio_vibrator* %136)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %128, %115, %75, %50, %25, %12
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.gpio_vibrator* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_8__*, %struct.gpio_vibrator*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_vibrator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
