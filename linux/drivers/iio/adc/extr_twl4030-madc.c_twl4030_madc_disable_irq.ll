; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_data = type { i32, i32 }

@TWL4030_MODULE_MADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to read imr register 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to write imr register 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_madc_data*, i32)* @twl4030_madc_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_disable_irq(%struct.twl4030_madc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl4030_madc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl4030_madc_data* %0, %struct.twl4030_madc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %9 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %10 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @twl_i2c_read_u8(i32 %8, i32* %6, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %17 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %20 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %47

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %32 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @twl_i2c_write_u8(i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %39 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %42 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %37, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
