; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_trigger_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_trigger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32, i32 }
%struct.iio_trigger = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mxs_lradc_adc = type { %struct.iio_trigger*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-dev%i\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mxs_lradc_adc_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @mxs_lradc_adc_trigger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_trigger_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_trigger*, align 8
  %6 = alloca %struct.mxs_lradc_adc*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %7)
  store %struct.mxs_lradc_adc* %8, %struct.mxs_lradc_adc** %6, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 2
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.iio_trigger* @devm_iio_trigger_alloc(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  store %struct.iio_trigger* %17, %struct.iio_trigger** %5, align 8
  %18 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %19 = icmp ne %struct.iio_trigger* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %6, align 8
  %25 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %28 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %32 = call i32 @iio_trigger_set_drvdata(%struct.iio_trigger* %30, %struct.iio_dev* %31)
  %33 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %34 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %33, i32 0, i32 0
  store i32* @mxs_lradc_adc_trigger_ops, i32** %34, align 8
  %35 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %36 = call i32 @iio_trigger_register(%struct.iio_trigger* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %23
  %42 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %43 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %6, align 8
  %44 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %43, i32 0, i32 0
  store %struct.iio_trigger* %42, %struct.iio_trigger** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %39, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_trigger* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.iio_trigger*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
