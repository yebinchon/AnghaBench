; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_lm25066.c_lm25066_read_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_lm25066.c_lm25066_read_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.lm25066_data = type { i32 }

@LM25066_READ_VAUX = common dso_local global i32 0, align 4
@LM25066_MFR_READ_IIN = common dso_local global i32 0, align 4
@LM25066_MFR_READ_PIN = common dso_local global i32 0, align 4
@LM25066_MFR_IIN_OC_WARN_LIMIT = common dso_local global i32 0, align 4
@LM25066_MFR_PIN_OP_WARN_LIMIT = common dso_local global i32 0, align 4
@LM25066_READ_AVG_VIN = common dso_local global i32 0, align 4
@LM25066_READ_AVG_VOUT = common dso_local global i32 0, align 4
@LM25066_READ_AVG_IIN = common dso_local global i32 0, align 4
@LM25066_READ_AVG_PIN = common dso_local global i32 0, align 4
@LM25066_READ_PIN_PEAK = common dso_local global i32 0, align 4
@LM25066_SAMPLES_FOR_AVG = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @lm25066_read_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm25066_read_word_data(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pmbus_driver_info*, align 8
  %8 = alloca %struct.lm25066_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %10)
  store %struct.pmbus_driver_info* %11, %struct.pmbus_driver_info** %7, align 8
  %12 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %13 = call %struct.lm25066_data* @to_lm25066_data(%struct.pmbus_driver_info* %12)
  store %struct.lm25066_data* %13, %struct.lm25066_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %90 [
    i32 136, label %15
    i32 142, label %43
    i32 141, label %47
    i32 144, label %51
    i32 143, label %55
    i32 137, label %59
    i32 135, label %63
    i32 140, label %67
    i32 139, label %71
    i32 138, label %75
    i32 134, label %79
    i32 133, label %80
  ]

15:                                               ; preds = %3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @LM25066_READ_VAUX, align 4
  %18 = call i32 @pmbus_read_word_data(%struct.i2c_client* %16, i32 0, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %93

22:                                               ; preds = %15
  %23 = load %struct.lm25066_data*, %struct.lm25066_data** %8, align 8
  %24 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %42 [
    i32 132, label %26
    i32 131, label %30
    i32 130, label %34
    i32 129, label %38
    i32 128, label %38
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 293
  %29 = call i32 @DIV_ROUND_CLOSEST(i32 %28, i32 6140)
  store i32 %29, i32* %9, align 4
  br label %42

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 2832
  %33 = call i32 @DIV_ROUND_CLOSEST(i32 %32, i32 45400)
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 70
  %37 = call i32 @DIV_ROUND_CLOSEST(i32 %36, i32 453)
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %22, %22
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %39, 725
  %41 = call i32 @DIV_ROUND_CLOSEST(i32 %40, i32 2180)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %22, %38, %34, %30, %26
  br label %93

43:                                               ; preds = %3
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load i32, i32* @LM25066_MFR_READ_IIN, align 4
  %46 = call i32 @pmbus_read_word_data(%struct.i2c_client* %44, i32 0, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %93

47:                                               ; preds = %3
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @LM25066_MFR_READ_PIN, align 4
  %50 = call i32 @pmbus_read_word_data(%struct.i2c_client* %48, i32 0, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %93

51:                                               ; preds = %3
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @LM25066_MFR_IIN_OC_WARN_LIMIT, align 4
  %54 = call i32 @pmbus_read_word_data(%struct.i2c_client* %52, i32 0, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %93

55:                                               ; preds = %3
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @LM25066_MFR_PIN_OP_WARN_LIMIT, align 4
  %58 = call i32 @pmbus_read_word_data(%struct.i2c_client* %56, i32 0, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %93

59:                                               ; preds = %3
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @LM25066_READ_AVG_VIN, align 4
  %62 = call i32 @pmbus_read_word_data(%struct.i2c_client* %60, i32 0, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %93

63:                                               ; preds = %3
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* @LM25066_READ_AVG_VOUT, align 4
  %66 = call i32 @pmbus_read_word_data(%struct.i2c_client* %64, i32 0, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %93

67:                                               ; preds = %3
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load i32, i32* @LM25066_READ_AVG_IIN, align 4
  %70 = call i32 @pmbus_read_word_data(%struct.i2c_client* %68, i32 0, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %93

71:                                               ; preds = %3
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = load i32, i32* @LM25066_READ_AVG_PIN, align 4
  %74 = call i32 @pmbus_read_word_data(%struct.i2c_client* %72, i32 0, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %93

75:                                               ; preds = %3
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load i32, i32* @LM25066_READ_PIN_PEAK, align 4
  %78 = call i32 @pmbus_read_word_data(%struct.i2c_client* %76, i32 0, i32 %77)
  store i32 %78, i32* %9, align 4
  br label %93

79:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %93

80:                                               ; preds = %3
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = load i32, i32* @LM25066_SAMPLES_FOR_AVG, align 4
  %83 = call i32 @pmbus_read_byte_data(%struct.i2c_client* %81, i32 0, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %93

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 1, %88
  store i32 %89, i32* %9, align 4
  br label %93

90:                                               ; preds = %3
  %91 = load i32, i32* @ENODATA, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %87, %86, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %42, %21
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.lm25066_data* @to_lm25066_data(%struct.pmbus_driver_info*) #1

declare dso_local i32 @pmbus_read_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
