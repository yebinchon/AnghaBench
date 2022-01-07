; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_calibrate_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_calibrate_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }
%struct.cpcap_adc = type { i64, i32, i32 }

@CPCAP_ADC_MAX_RETRIES = common dso_local global i32 0, align 4
@ST_ADC_CALIBRATE_DIFF_THRESHOLD = common dso_local global i16 0, align 2
@CPCAP_VENDOR_TI = common dso_local global i64 0, align 8
@bank_conversion = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"ch%i calibration complete: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_adc*, i32, i32, i32, i32)* @cpcap_adc_calibrate_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_adc_calibrate_one(%struct.cpcap_adc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpcap_adc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cpcap_adc* %0, %struct.cpcap_adc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %118, %5
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @CPCAP_ADC_MAX_RETRIES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %121

20:                                               ; preds = %16
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %22, align 4
  store i16 0, i16* %13, align 2
  %23 = load %struct.cpcap_adc*, %struct.cpcap_adc** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @cpcap_adc_setup_calibrate(%struct.cpcap_adc* %23, i32 %24)
  %26 = load %struct.cpcap_adc*, %struct.cpcap_adc** %7, align 8
  %27 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %31 = call i32 @regmap_read(i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %6, align 4
  br label %122

36:                                               ; preds = %20
  %37 = load %struct.cpcap_adc*, %struct.cpcap_adc** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @cpcap_adc_setup_calibrate(%struct.cpcap_adc* %37, i32 %38)
  %40 = load %struct.cpcap_adc*, %struct.cpcap_adc** %7, align 8
  %41 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %45 = call i32 @regmap_read(i32 %42, i32 %43, i32* %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %6, align 4
  br label %122

50:                                               ; preds = %36
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %58, %60
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %13, align 2
  br label %70

63:                                               ; preds = %50
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = sub i32 %65, %67
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %13, align 2
  br label %70

70:                                               ; preds = %63, %56
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i16, i16* %13, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @ST_ADC_CALIBRATE_DIFF_THRESHOLD, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80, %75, %70
  %87 = load %struct.cpcap_adc*, %struct.cpcap_adc** %7, align 8
  %88 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CPCAP_VENDOR_TI, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86, %80
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = trunc i32 %94 to i16
  %96 = sext i16 %95 to i32
  %97 = mul nsw i32 %96, -1
  %98 = add nsw i32 %97, 512
  %99 = trunc i32 %98 to i16
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bank_conversion, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i16 %99, i16* %104, align 2
  %105 = load %struct.cpcap_adc*, %struct.cpcap_adc** %7, align 8
  %106 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bank_conversion, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i16, i16* %113, align 2
  %115 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %108, i16 signext %114)
  br label %121

116:                                              ; preds = %86
  %117 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %118

118:                                              ; preds = %116
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %16

121:                                              ; preds = %92, %16
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %48, %34
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @cpcap_adc_setup_calibrate(%struct.cpcap_adc*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i16 signext) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
