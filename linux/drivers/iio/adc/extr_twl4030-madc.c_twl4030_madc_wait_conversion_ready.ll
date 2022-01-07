; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_wait_conversion_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_wait_conversion_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@TWL4030_MODULE_MADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to read status register 0x%X\0A\00", align 1
@TWL4030_MADC_BUSY = common dso_local global i32 0, align 4
@TWL4030_MADC_EOC_SW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"conversion timeout!\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_madc_data*, i32, i32)* @twl4030_madc_wait_conversion_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_wait_conversion_ready(%struct.twl4030_madc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_madc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.twl4030_madc_data* %0, %struct.twl4030_madc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %41, %3
  %16 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @twl_i2c_read_u8(i32 %16, i32* %10, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %5, align 8
  %23 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %15
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TWL4030_MADC_BUSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @TWL4030_MADC_EOC_SW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %54

39:                                               ; preds = %33, %28
  %40 = call i32 @usleep_range(i32 500, i32 2000)
  br label %41

41:                                               ; preds = %39
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %15, label %47

47:                                               ; preds = %41
  %48 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %5, align 8
  %49 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %38, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
