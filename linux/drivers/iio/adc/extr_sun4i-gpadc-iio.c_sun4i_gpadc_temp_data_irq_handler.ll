; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_temp_data_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sun4i-gpadc-iio.c_sun4i_gpadc_temp_data_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_gpadc_iio = type { i32, i32, i32, i32 }

@SUN4I_GPADC_TEMP_DATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun4i_gpadc_temp_data_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_gpadc_temp_data_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sun4i_gpadc_iio*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sun4i_gpadc_iio*
  store %struct.sun4i_gpadc_iio* %7, %struct.sun4i_gpadc_iio** %5, align 8
  %8 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %5, align 8
  %9 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %8, i32 0, i32 3
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %5, align 8
  %15 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SUN4I_GPADC_TEMP_DATA, align 4
  %18 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %5, align 8
  %19 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %18, i32 0, i32 1
  %20 = call i32 @regmap_read(i32 %16, i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load %struct.sun4i_gpadc_iio*, %struct.sun4i_gpadc_iio** %5, align 8
  %24 = getelementptr inbounds %struct.sun4i_gpadc_iio, %struct.sun4i_gpadc_iio* %23, i32 0, i32 0
  %25 = call i32 @complete(i32* %24)
  br label %26

26:                                               ; preds = %22, %13
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %28
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
