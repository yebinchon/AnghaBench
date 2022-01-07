; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030battery_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030battery_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMP_STEP_SIZE = common dso_local global i32 0, align 4
@TEMP_PSR_R = common dso_local global i32 0, align 4
@TWL_MODULE_MAIN_CHARGE = common dso_local global i32 0, align 4
@REG_BCICTL2 = common dso_local global i32 0, align 4
@TWL4030_BCI_ITHSENS = common dso_local global i32 0, align 4
@twl4030_therm_tbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl4030battery_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030battery_temperature(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TEMP_STEP_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @TEMP_PSR_R, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @TWL_MODULE_MAIN_CHARGE, align 4
  %17 = load i32, i32* @REG_BCICTL2, align 4
  %18 = call i32 @twl_i2c_read_u8(i32 %16, i32* %4, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TWL4030_BCI_ITHSENS, align 4
  %26 = and i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %27, 10
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 1000
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %8, align 4
  store i32 58, i32* %5, align 4
  br label %33

33:                                               ; preds = %48, %23
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i32*, i32** @twl4030_therm_tbl, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  br label %33

51:                                               ; preds = %46, %33
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
