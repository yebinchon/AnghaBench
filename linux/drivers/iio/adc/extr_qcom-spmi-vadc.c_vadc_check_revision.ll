; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_check_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-vadc.c_vadc_check_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_priv = type { i32 }

@VADC_PERPH_TYPE = common dso_local global i32 0, align 4
@VADC_PERPH_TYPE_ADC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%d is not ADC\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VADC_PERPH_SUBTYPE = common dso_local global i32 0, align 4
@VADC_PERPH_SUBTYPE_VADC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%d is not VADC\0A\00", align 1
@VADC_REVISION2 = common dso_local global i32 0, align 4
@VADC_REVISION2_SUPPORTED_VADC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"revision %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_priv*)* @vadc_check_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vadc_check_revision(%struct.vadc_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vadc_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vadc_priv* %0, %struct.vadc_priv** %3, align 8
  %6 = load %struct.vadc_priv*, %struct.vadc_priv** %3, align 8
  %7 = load i32, i32* @VADC_PERPH_TYPE, align 4
  %8 = call i32 @vadc_read(%struct.vadc_priv* %6, i32 %7, i64* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @VADC_PERPH_TYPE_ADC, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.vadc_priv*, %struct.vadc_priv** %3, align 8
  %19 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %13
  %26 = load %struct.vadc_priv*, %struct.vadc_priv** %3, align 8
  %27 = load i32, i32* @VADC_PERPH_SUBTYPE, align 4
  %28 = call i32 @vadc_read(%struct.vadc_priv* %26, i32 %27, i64* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %25
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @VADC_PERPH_SUBTYPE_VADC, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.vadc_priv*, %struct.vadc_priv** %3, align 8
  %39 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %66

45:                                               ; preds = %33
  %46 = load %struct.vadc_priv*, %struct.vadc_priv** %3, align 8
  %47 = load i32, i32* @VADC_REVISION2, align 4
  %48 = call i32 @vadc_read(%struct.vadc_priv* %46, i32 %47, i64* %4)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %45
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @VADC_REVISION2_SUPPORTED_VADC, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.vadc_priv*, %struct.vadc_priv** %3, align 8
  %59 = getelementptr inbounds %struct.vadc_priv, %struct.vadc_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %57, %51, %37, %31, %17, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @vadc_read(%struct.vadc_priv*, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
