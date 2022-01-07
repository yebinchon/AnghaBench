; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_allocate_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_allocate_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iio_dev = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.at91_adc_trigger = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s-dev%d-%s\00", align 1
@at91_adc_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_trigger* (%struct.iio_dev*, %struct.at91_adc_trigger*)* @at91_adc_allocate_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_trigger* @at91_adc_allocate_trigger(%struct.iio_dev* %0, %struct.at91_adc_trigger* %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.at91_adc_trigger*, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.at91_adc_trigger* %1, %struct.at91_adc_trigger** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.at91_adc_trigger*, %struct.at91_adc_trigger** %5, align 8
  %15 = getelementptr inbounds %struct.at91_adc_trigger, %struct.at91_adc_trigger* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.iio_trigger* @iio_trigger_alloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  store %struct.iio_trigger* %17, %struct.iio_trigger** %6, align 8
  %18 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %19 = icmp eq %struct.iio_trigger* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.iio_trigger* null, %struct.iio_trigger** %3, align 8
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %27 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %31 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %29, %struct.iio_dev* %30)
  %32 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %33 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %32, i32 0, i32 0
  store i32* @at91_adc_trigger_ops, i32** %33, align 8
  %34 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %35 = call i32 @iio_trigger_register(%struct.iio_trigger* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store %struct.iio_trigger* null, %struct.iio_trigger** %3, align 8
  br label %41

39:                                               ; preds = %21
  %40 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  store %struct.iio_trigger* %40, %struct.iio_trigger** %3, align 8
  br label %41

41:                                               ; preds = %39, %38, %20
  %42 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  ret %struct.iio_trigger* %42
}

declare dso_local %struct.iio_trigger* @iio_trigger_alloc(i8*, i32, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
