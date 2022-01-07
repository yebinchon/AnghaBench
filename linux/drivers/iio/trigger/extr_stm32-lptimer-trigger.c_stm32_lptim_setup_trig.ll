; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-lptimer-trigger.c_stm32_lptim_setup_trig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-lptimer-trigger.c_stm32_lptim_setup_trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_lptim_trigger = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iio_trigger = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@stm32_lptim_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_lptim_trigger*)* @stm32_lptim_setup_trig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_setup_trig(%struct.stm32_lptim_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_lptim_trigger*, align 8
  %4 = alloca %struct.iio_trigger*, align 8
  store %struct.stm32_lptim_trigger* %0, %struct.stm32_lptim_trigger** %3, align 8
  %5 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %3, align 8
  %6 = getelementptr inbounds %struct.stm32_lptim_trigger, %struct.stm32_lptim_trigger* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_lptim_trigger, %struct.stm32_lptim_trigger* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_5__* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.iio_trigger* %11, %struct.iio_trigger** %4, align 8
  %12 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %13 = icmp ne %struct.iio_trigger* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_lptim_trigger, %struct.stm32_lptim_trigger* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %24 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %27 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %26, i32 0, i32 0
  store i32* @stm32_lptim_trigger_ops, i32** %27, align 8
  %28 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %29 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %3, align 8
  %30 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %28, %struct.stm32_lptim_trigger* %29)
  %31 = load %struct.stm32_lptim_trigger*, %struct.stm32_lptim_trigger** %3, align 8
  %32 = getelementptr inbounds %struct.stm32_lptim_trigger, %struct.stm32_lptim_trigger* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %35 = call i32 @devm_iio_trigger_register(%struct.TYPE_5__* %33, %struct.iio_trigger* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %17, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.stm32_lptim_trigger*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.TYPE_5__*, %struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
