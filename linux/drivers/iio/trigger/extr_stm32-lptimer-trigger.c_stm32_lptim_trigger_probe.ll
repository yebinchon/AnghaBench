; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-lptimer-trigger.c_stm32_lptim_trigger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-lptimer-trigger.c_stm32_lptim_trigger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_lptim_trigger = type { i32, %struct.TYPE_2__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stm32_lptim_triggers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_lptim_trigger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_trigger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_lptim_trigger*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.stm32_lptim_trigger* @devm_kzalloc(%struct.TYPE_2__* %8, i32 16, i32 %9)
  store %struct.stm32_lptim_trigger* %10, %struct.stm32_lptim_trigger** %4, align 8
  %11 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %4, align 8
  %12 = icmp ne %struct.stm32_lptim_trigger* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @of_property_read_u32(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %55

26:                                               ; preds = %16
  %27 = load i64, i64* %5, align 8
  %28 = load i32*, i32** @stm32_lptim_triggers, align 8
  %29 = call i64 @ARRAY_SIZE(i32* %28)
  %30 = icmp uge i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %4, align 8
  %38 = getelementptr inbounds %struct.stm32_lptim_trigger, %struct.stm32_lptim_trigger* %37, i32 0, i32 1
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load i32*, i32** @stm32_lptim_triggers, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_lptim_trigger, %struct.stm32_lptim_trigger* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %4, align 8
  %46 = call i32 @stm32_lptim_setup_trig(%struct.stm32_lptim_trigger* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %34
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %4, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.stm32_lptim_trigger* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %49, %31, %23, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.stm32_lptim_trigger* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @stm32_lptim_setup_trig(%struct.stm32_lptim_trigger*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_lptim_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
