; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_step_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti_am335x_adc.c_tiadc_step_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.tiadc_device = type { i32, i32*, i64*, i64*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@STEPCONFIG_AVG_16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"chan %d step_avg truncating to %d\0A\00", align 1
@STEPCONFIG_FIFO1 = common dso_local global i32 0, align 4
@STEPCONFIG_MODE_SWCNT = common dso_local global i32 0, align 4
@STEPCONFIG_INM_ADCREFM = common dso_local global i32 0, align 4
@STEPCONFIG_RFP_VREFP = common dso_local global i32 0, align 4
@STEPCONFIG_RFM_VREFN = common dso_local global i32 0, align 4
@STEPDELAY_OPEN_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"chan %d open delay truncating to 0x3FFFF\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"chan %d sample delay truncating to 0xFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @tiadc_step_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiadc_step_config(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.tiadc_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %10 = call %struct.tiadc_device* @iio_priv(%struct.iio_dev* %9)
  store %struct.tiadc_device* %10, %struct.tiadc_device** %3, align 8
  %11 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %12 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %168, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %19 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %171

22:                                               ; preds = %16
  %23 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %24 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %31 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STEPCONFIG_AVG_16, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %22
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i64, i64* @STEPCONFIG_AVG_16, align 8
  %43 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  %44 = load i64, i64* @STEPCONFIG_AVG_16, align 8
  %45 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %46 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %44, i64* %50, align 8
  br label %51

51:                                               ; preds = %39, %22
  %52 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %53 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %62 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ffs(i64 %67)
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @STEPCONFIG_AVG(i64 %69)
  %71 = load i32, i32* @STEPCONFIG_FIFO1, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %51
  %74 = load i32, i32* @STEPCONFIG_FIFO1, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %60
  %76 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %77 = call i64 @iio_buffer_enabled(%struct.iio_dev* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @STEPCONFIG_MODE_SWCNT, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @REG_STEPCONFIG(i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @STEPCONFIG_INP(i32 %88)
  %90 = or i32 %87, %89
  %91 = load i32, i32* @STEPCONFIG_INM_ADCREFM, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @STEPCONFIG_RFP_VREFP, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @STEPCONFIG_RFM_VREFN, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @tiadc_writel(%struct.tiadc_device* %84, i32 %86, i32 %96)
  %98 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %99 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %98, i32 0, i32 3
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @STEPDELAY_OPEN_MASK, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %83
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i64, i64* @STEPDELAY_OPEN_MASK, align 8
  %112 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %113 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %111, i64* %117, align 8
  br label %118

118:                                              ; preds = %107, %83
  %119 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %120 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 255
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %132 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 255, i32* %136, align 4
  br label %137

137:                                              ; preds = %127, %118
  %138 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @REG_STEPDELAY(i32 %139)
  %141 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %142 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %141, i32 0, i32 3
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @STEPDELAY_OPEN(i64 %147)
  %149 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %150 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @STEPDELAY_SAMPLE(i32 %155)
  %157 = or i32 %148, %156
  %158 = call i32 @tiadc_writel(%struct.tiadc_device* %138, i32 %140, i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.tiadc_device*, %struct.tiadc_device** %3, align 8
  %161 = getelementptr inbounds %struct.tiadc_device, %struct.tiadc_device* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %137
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %16

171:                                              ; preds = %16
  ret void
}

declare dso_local %struct.tiadc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @STEPCONFIG_AVG(i64) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @tiadc_writel(%struct.tiadc_device*, i32, i32) #1

declare dso_local i32 @REG_STEPCONFIG(i32) #1

declare dso_local i32 @STEPCONFIG_INP(i32) #1

declare dso_local i32 @REG_STEPDELAY(i32) #1

declare dso_local i32 @STEPDELAY_OPEN(i64) #1

declare dso_local i32 @STEPDELAY_SAMPLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
