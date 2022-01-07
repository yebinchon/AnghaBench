; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-beeper.c_gpio_beeper_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio-beeper.c_gpio_beeper_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.gpio_beeper = type { i32, i32 }
%struct.input_dev = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@gpio_beeper_work = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@gpio_beeper_close = common dso_local global i32 0, align 4
@gpio_beeper_event = common dso_local global i32 0, align 4
@EV_SND = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_beeper_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_beeper_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_beeper*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.gpio_beeper* @devm_kzalloc(i32* %7, i32 8, i32 %8)
  store %struct.gpio_beeper* %9, %struct.gpio_beeper** %4, align 8
  %10 = load %struct.gpio_beeper*, %struct.gpio_beeper** %4, align 8
  %11 = icmp ne %struct.gpio_beeper* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %19 = call i32 @devm_gpiod_get(i32* %17, i32* null, i32 %18)
  %20 = load %struct.gpio_beeper*, %struct.gpio_beeper** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_beeper, %struct.gpio_beeper* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.gpio_beeper*, %struct.gpio_beeper** %4, align 8
  %23 = getelementptr inbounds %struct.gpio_beeper, %struct.gpio_beeper* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.gpio_beeper*, %struct.gpio_beeper** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_beeper, %struct.gpio_beeper* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %79

32:                                               ; preds = %15
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = call %struct.input_dev* @devm_input_allocate_device(i32* %34)
  store %struct.input_dev* %35, %struct.input_dev** %5, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = icmp ne %struct.input_dev* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %32
  %42 = load %struct.gpio_beeper*, %struct.gpio_beeper** %4, align 8
  %43 = getelementptr inbounds %struct.gpio_beeper, %struct.gpio_beeper* %42, i32 0, i32 0
  %44 = load i32, i32* @gpio_beeper_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @BUS_HOST, align 4
  %52 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 256, i32* %63, align 4
  %64 = load i32, i32* @gpio_beeper_close, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @gpio_beeper_event, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %71 = load i32, i32* @EV_SND, align 4
  %72 = load i32, i32* @SND_BELL, align 4
  %73 = call i32 @input_set_capability(%struct.input_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = load %struct.gpio_beeper*, %struct.gpio_beeper** %4, align 8
  %76 = call i32 @input_set_drvdata(%struct.input_dev* %74, %struct.gpio_beeper* %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %78 = call i32 @input_register_device(%struct.input_dev* %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %41, %38, %27, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.gpio_beeper* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.gpio_beeper*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
