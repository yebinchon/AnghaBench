; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_read_processed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_da9150-gpadc.c_da9150_gpadc_read_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_gpadc = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9150_gpadc*, i32, i32, i32*)* @da9150_gpadc_read_processed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_gpadc_read_processed(%struct.da9150_gpadc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9150_gpadc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.da9150_gpadc* %0, %struct.da9150_gpadc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.da9150_gpadc*, %struct.da9150_gpadc** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @da9150_gpadc_read_adc(%struct.da9150_gpadc* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %41

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %36 [
    i32 134, label %20
    i32 133, label %20
    i32 132, label %20
    i32 131, label %20
    i32 130, label %24
    i32 129, label %28
    i32 128, label %32
  ]

20:                                               ; preds = %18, %18, %18, %18
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @da9150_gpadc_gpio_6v_voltage_now(i32 %21)
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  br label %39

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @da9150_gpadc_ibus_current_avg(i32 %25)
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @da9150_gpadc_vbus_21v_voltage_now(i32 %29)
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  br label %39

32:                                               ; preds = %18
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @da9150_gpadc_vsys_6v_voltage_now(i32 %33)
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %39

36:                                               ; preds = %18
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %32, %28, %24, %20
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @da9150_gpadc_read_adc(%struct.da9150_gpadc*, i32) #1

declare dso_local i32 @da9150_gpadc_gpio_6v_voltage_now(i32) #1

declare dso_local i32 @da9150_gpadc_ibus_current_avg(i32) #1

declare dso_local i32 @da9150_gpadc_vbus_21v_voltage_now(i32) #1

declare dso_local i32 @da9150_gpadc_vsys_6v_voltage_now(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
