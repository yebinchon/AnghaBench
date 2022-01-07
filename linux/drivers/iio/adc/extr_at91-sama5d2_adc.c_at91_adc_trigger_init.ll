; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_trigger_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_trigger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"could not allocate trigger\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @at91_adc_trigger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_trigger_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.at91_adc_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %5)
  store %struct.at91_adc_state* %6, %struct.at91_adc_state** %4, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %9 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @at91_adc_allocate_trigger(%struct.iio_dev* %7, i32 %12)
  %14 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %15 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %17 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %26 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_allocate_trigger(%struct.iio_dev*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
