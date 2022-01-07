; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_rsense_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-iadc.c_iadc_rsense_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iadc_chip = type { i32*, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"qcom,external-resistor-micro-ohms\00", align 1
@IADC_EXT_RSENSE = common dso_local global i64 0, align 8
@IADC_INT_RSENSE_IDEAL_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"external resistor can't be zero Ohms\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IADC_NOMINAL_RSENSE = common dso_local global i32 0, align 4
@IADC_NOMINAL_RSENSE_SIGN_MASK = common dso_local global i32 0, align 4
@IADC_INT_RSENSE_DEVIATION = common dso_local global i32 0, align 4
@IADC_INT_RSENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iadc_chip*, %struct.device_node*)* @iadc_rsense_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iadc_rsense_read(%struct.iadc_chip* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iadc_chip*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iadc_chip* %0, %struct.iadc_chip** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %12 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @IADC_EXT_RSENSE, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @IADC_INT_RSENSE_IDEAL_VALUE, align 4
  %21 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %22 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @IADC_EXT_RSENSE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %28 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @IADC_EXT_RSENSE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %26
  %35 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %36 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %26
  %42 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %43 = load i32, i32* @IADC_NOMINAL_RSENSE, align 4
  %44 = call i32 @iadc_read(%struct.iadc_chip* %42, i32 %43, i32* %9)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %77

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @IADC_NOMINAL_RSENSE_SIGN_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 -1, i32 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @IADC_NOMINAL_RSENSE_SIGN_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @IADC_INT_RSENSE_IDEAL_VALUE, align 4
  %61 = mul nsw i32 %60, 1000
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* @IADC_INT_RSENSE_DEVIATION, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sdiv i32 %69, 1000
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.iadc_chip*, %struct.iadc_chip** %4, align 8
  %73 = getelementptr inbounds %struct.iadc_chip, %struct.iadc_chip* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @IADC_INT_RSENSE, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %49, %47, %34
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iadc_read(%struct.iadc_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
