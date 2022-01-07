; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_channel_raw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_channel_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_data = type { i32 }

@TWL4030_MODULE_MADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to read register 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_madc_data*, i32)* @twl4030_madc_channel_raw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_channel_raw_read(%struct.twl4030_madc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl4030_madc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl4030_madc_data* %0, %struct.twl4030_madc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @twl_i2c_read_u16(i32 %8, i32* %6, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %4, align 8
  %15 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 6
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @twl_i2c_read_u16(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
