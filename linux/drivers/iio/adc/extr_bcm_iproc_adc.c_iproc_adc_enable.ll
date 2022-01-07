; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.iproc_adc_priv = type { i32, i32 }

@IPROC_ANALOG_CONTROL = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_SEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to write IPROC_ANALOG_CONTROL %d\0A\00", align 1
@IPROC_REGCTL2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to read IPROC_REGCTL2 %d\0A\00", align 1
@IPROC_ADC_PWR_LDO = common dso_local global i32 0, align 4
@IPROC_ADC_PWR_ADC = common dso_local global i32 0, align 4
@IPROC_ADC_PWR_BG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to write IPROC_REGCTL2 %d\0A\00", align 1
@IPROC_ADC_CONTROLLER_EN = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_INTERRUPT_MASK = common dso_local global i64 0, align 8
@IPROC_ADC_CHANNEL_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"failed to write ADC_CHANNEL_INTERRUPT_MASK %d\0A\00", align 1
@IPROC_ADC_CHANNEL_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"failed to write ADC_CHANNEL_INTERRUPT_STATUS %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @iproc_adc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_adc_enable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iproc_adc_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev* %8)
  store %struct.iproc_adc_priv* %9, %struct.iproc_adc_priv** %6, align 8
  %10 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %11 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IPROC_ANALOG_CONTROL, align 4
  %14 = load i32, i32* @IPROC_ADC_CHANNEL_SEL_MASK, align 4
  %15 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %145

24:                                               ; preds = %1
  %25 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %26 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  %27 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %28 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @IPROC_REGCTL2, align 8
  %31 = call i32 @regmap_read(i32 %29, i64 %30, i32* %4)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %145

40:                                               ; preds = %24
  %41 = load i32, i32* @IPROC_ADC_PWR_LDO, align 4
  %42 = load i32, i32* @IPROC_ADC_PWR_ADC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IPROC_ADC_PWR_BG, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %50 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @IPROC_REGCTL2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @regmap_write(i32 %51, i64 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %40
  %58 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %145

63:                                               ; preds = %40
  %64 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %65 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @IPROC_REGCTL2, align 8
  %68 = call i32 @regmap_read(i32 %66, i64 %67, i32* %4)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %145

77:                                               ; preds = %63
  %78 = load i32, i32* @IPROC_ADC_CONTROLLER_EN, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %82 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @IPROC_REGCTL2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @regmap_write(i32 %83, i64 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %77
  %90 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %145

95:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %141, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %144

102:                                              ; preds = %96
  %103 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %104 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @IPROC_ADC_CHANNEL_INTERRUPT_MASK, align 8
  %107 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %106, %110
  %112 = call i32 @regmap_write(i32 %105, i64 %111, i32 0)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %145

121:                                              ; preds = %102
  %122 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %6, align 8
  %123 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* @IPROC_ADC_CHANNEL_INTERRUPT_STATUS, align 8
  %126 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %127 = load i32, i32* %5, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %125, %129
  %131 = call i32 @regmap_write(i32 %124, i64 %130, i32 0)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %121
  %135 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %136 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %145

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %96

144:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %134, %115, %89, %71, %57, %34, %18
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
