; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_allocate_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_allocate_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iio_dev = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s-dev%d-%s\00", align 1
@at91_adc_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_trigger* (%struct.iio_dev*, i8*)* @at91_adc_allocate_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_trigger* @at91_adc_allocate_trigger(%struct.iio_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 0
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i8* %16)
  store %struct.iio_trigger* %17, %struct.iio_trigger** %6, align 8
  %18 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %19 = icmp ne %struct.iio_trigger* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.iio_trigger* null, %struct.iio_trigger** %3, align 8
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %27 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %31 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %29, %struct.iio_dev* %30)
  %32 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %33 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %32, i32 0, i32 0
  store i32* @at91_adc_trigger_ops, i32** %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 0
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %37 = call i32 @devm_iio_trigger_register(%struct.TYPE_5__* %35, %struct.iio_trigger* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.iio_trigger* @ERR_PTR(i32 %41)
  store %struct.iio_trigger* %42, %struct.iio_trigger** %3, align 8
  br label %45

43:                                               ; preds = %21
  %44 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  store %struct.iio_trigger* %44, %struct.iio_trigger** %3, align 8
  br label %45

45:                                               ; preds = %43, %40, %20
  %46 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  ret %struct.iio_trigger* %46
}

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(%struct.TYPE_5__*, i8*, i32, i32, i8*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.TYPE_5__*, %struct.iio_trigger*) #1

declare dso_local %struct.iio_trigger* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
