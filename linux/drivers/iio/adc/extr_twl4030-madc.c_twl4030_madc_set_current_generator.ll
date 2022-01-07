; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_set_current_generator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_set_current_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_data = type { i32 }

@TWL_MODULE_MAIN_CHARGE = common dso_local global i32 0, align 4
@TWL4030_BCI_BCICTL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to read BCICTL1 reg 0x%X\00", align 1
@TWL4030_BCI_ITHEN = common dso_local global i32 0, align 4
@TWL4030_BCI_TYPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to write BCICTL1 reg 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_madc_data*, i32, i32)* @twl4030_madc_set_current_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_set_current_generator(%struct.twl4030_madc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_madc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.twl4030_madc_data* %0, %struct.twl4030_madc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %12 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %13 = call i32 @twl_i2c_read_u8(i32 %11, i32* %10, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %5, align 8
  %18 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @TWL4030_BCI_ITHEN, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @TWL4030_BCI_TYPEN, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %47 = call i32 @twl_i2c_write_u8(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %5, align 8
  %52 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TWL4030_BCI_BCICTL1, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %50, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
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
