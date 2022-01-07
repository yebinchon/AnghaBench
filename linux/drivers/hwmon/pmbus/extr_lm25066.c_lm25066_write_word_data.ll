; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_lm25066.c_lm25066_write_word_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_lm25066.c_lm25066_write_word_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32 }
%struct.lm25066_data = type { i32 }

@LM25066_MFR_IIN_OC_WARN_LIMIT = common dso_local global i32 0, align 4
@LM25066_MFR_PIN_OP_WARN_LIMIT = common dso_local global i32 0, align 4
@LM25056_VAUX_UV_WARN_LIMIT = common dso_local global i32 0, align 4
@LM25056_VAUX_OV_WARN_LIMIT = common dso_local global i32 0, align 4
@LM25066_CLEAR_PIN_PEAK = common dso_local global i32 0, align 4
@LM25066_SAMPLES_FOR_AVG_MAX = common dso_local global i32 0, align 4
@LM25066_SAMPLES_FOR_AVG = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i64)* @lm25066_write_word_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm25066_write_word_data(%struct.i2c_client* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.pmbus_driver_info*, align 8
  %10 = alloca %struct.lm25066_data*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client* %12)
  store %struct.pmbus_driver_info* %13, %struct.pmbus_driver_info** %9, align 8
  %14 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %15 = call %struct.lm25066_data* @to_lm25066_data(%struct.pmbus_driver_info* %14)
  store %struct.lm25066_data* %15, %struct.lm25066_data** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %133 [
    i32 138, label %17
    i32 137, label %17
    i32 128, label %17
    i32 141, label %17
    i32 140, label %17
    i32 143, label %17
    i32 133, label %17
    i32 134, label %17
    i32 136, label %17
    i32 135, label %17
    i32 142, label %36
    i32 139, label %55
    i32 129, label %74
    i32 130, label %97
    i32 132, label %120
    i32 131, label %124
  ]

17:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %28

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.lm25066_data*, %struct.lm25066_data** %10, align 8
  %25 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @clamp_val(i64 %23, i32 0, i32 %26)
  br label %28

28:                                               ; preds = %22, %21
  %29 = phi i64 [ 0, %21 ], [ %27, %22 ]
  store i64 %29, i64* %8, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @pmbus_write_word_data(%struct.i2c_client* %30, i32 0, i32 %31, i64 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = call i32 @pmbus_clear_cache(%struct.i2c_client* %34)
  br label %136

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %47

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.lm25066_data*, %struct.lm25066_data** %10, align 8
  %44 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @clamp_val(i64 %42, i32 0, i32 %45)
  br label %47

47:                                               ; preds = %41, %40
  %48 = phi i64 [ 0, %40 ], [ %46, %41 ]
  store i64 %48, i64* %8, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %50 = load i32, i32* @LM25066_MFR_IIN_OC_WARN_LIMIT, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @pmbus_write_word_data(%struct.i2c_client* %49, i32 0, i32 %50, i64 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = call i32 @pmbus_clear_cache(%struct.i2c_client* %53)
  br label %136

55:                                               ; preds = %4
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %66

60:                                               ; preds = %55
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.lm25066_data*, %struct.lm25066_data** %10, align 8
  %63 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @clamp_val(i64 %61, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %60, %59
  %67 = phi i64 [ 0, %59 ], [ %65, %60 ]
  store i64 %67, i64* %8, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = load i32, i32* @LM25066_MFR_PIN_OP_WARN_LIMIT, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @pmbus_write_word_data(%struct.i2c_client* %68, i32 0, i32 %69, i64 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %73 = call i32 @pmbus_clear_cache(%struct.i2c_client* %72)
  br label %136

74:                                               ; preds = %4
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i32
  %77 = mul nsw i32 %76, 6140
  %78 = call i64 @DIV_ROUND_CLOSEST(i32 %77, i32 293)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = trunc i64 %79 to i32
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %89

83:                                               ; preds = %74
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.lm25066_data*, %struct.lm25066_data** %10, align 8
  %86 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @clamp_val(i64 %84, i32 0, i32 %87)
  br label %89

89:                                               ; preds = %83, %82
  %90 = phi i64 [ 0, %82 ], [ %88, %83 ]
  store i64 %90, i64* %8, align 8
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = load i32, i32* @LM25056_VAUX_UV_WARN_LIMIT, align 4
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @pmbus_write_word_data(%struct.i2c_client* %91, i32 0, i32 %92, i64 %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %96 = call i32 @pmbus_clear_cache(%struct.i2c_client* %95)
  br label %136

97:                                               ; preds = %4
  %98 = load i64, i64* %8, align 8
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i32 %99, 6140
  %101 = call i64 @DIV_ROUND_CLOSEST(i32 %100, i32 293)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = trunc i64 %102 to i32
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %112

106:                                              ; preds = %97
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.lm25066_data*, %struct.lm25066_data** %10, align 8
  %109 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @clamp_val(i64 %107, i32 0, i32 %110)
  br label %112

112:                                              ; preds = %106, %105
  %113 = phi i64 [ 0, %105 ], [ %111, %106 ]
  store i64 %113, i64* %8, align 8
  %114 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %115 = load i32, i32* @LM25056_VAUX_OV_WARN_LIMIT, align 4
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @pmbus_write_word_data(%struct.i2c_client* %114, i32 0, i32 %115, i64 %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %119 = call i32 @pmbus_clear_cache(%struct.i2c_client* %118)
  br label %136

120:                                              ; preds = %4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %122 = load i32, i32* @LM25066_CLEAR_PIN_PEAK, align 4
  %123 = call i32 @pmbus_write_byte(%struct.i2c_client* %121, i32 0, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %136

124:                                              ; preds = %4
  %125 = load i64, i64* %8, align 8
  %126 = load i32, i32* @LM25066_SAMPLES_FOR_AVG_MAX, align 4
  %127 = call i64 @clamp_val(i64 %125, i32 1, i32 %126)
  store i64 %127, i64* %8, align 8
  %128 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %129 = load i32, i32* @LM25066_SAMPLES_FOR_AVG, align 4
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @ilog2(i64 %130)
  %132 = call i32 @pmbus_write_byte_data(%struct.i2c_client* %128, i32 0, i32 %129, i32 %131)
  store i32 %132, i32* %11, align 4
  br label %136

133:                                              ; preds = %4
  %134 = load i32, i32* @ENODATA, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %133, %124, %120, %112, %89, %66, %47, %28
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local %struct.pmbus_driver_info* @pmbus_get_driver_info(%struct.i2c_client*) #1

declare dso_local %struct.lm25066_data* @to_lm25066_data(%struct.pmbus_driver_info*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @pmbus_write_word_data(%struct.i2c_client*, i32, i32, i64) #1

declare dso_local i32 @pmbus_clear_cache(%struct.i2c_client*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @pmbus_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_write_byte_data(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
