; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_do_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_bcm_iproc_adc.c_iproc_adc_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iproc_adc_priv = type { i32, i32, i32, i32, i32 }

@IPROC_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@IPROC_ADC_INTR_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_AUXDATA_RDY_INTR = common dso_local global i32 0, align 4
@IPROC_ADC_INTR = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_ROUNDS = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_MODE_SNAPSHOT = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_MODE = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_ROUNDS_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_MODE_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_ENABLE_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_REGCTL1 = common dso_local global i64 0, align 8
@IPROC_ADC_CHANNEL_OFFSET = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_REGCTL2 = common dso_local global i64 0, align 8
@IPROC_ADC_CHANNEL_WATERMARK_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_CHANNEL_INTERRUPT_MASK = common dso_local global i64 0, align 8
@IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK = common dso_local global i32 0, align 4
@IPROC_ADC_WATER_MARK_INTR_ENABLE = common dso_local global i32 0, align 4
@IPROC_INTERRUPT_MASK = common dso_local global i64 0, align 8
@IPROC_ADC_INTMASK_RETRY_ATTEMPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IntMask failed (%d times)\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"IntMask set failed. Read will likely fail.\00", align 1
@EIO = common dso_local global i32 0, align 4
@IPROC_ADC_READ_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Timed out waiting for ADC data!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @iproc_adc_do_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_adc_do_read(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iproc_adc_priv*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev* %14)
  store %struct.iproc_adc_priv* %15, %struct.iproc_adc_priv** %13, align 8
  %16 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %17 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %20 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %23 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %25 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %24, i32 0, i32 4
  %26 = call i32 @reinit_completion(i32* %25)
  %27 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %28 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @IPROC_INTERRUPT_STATUS, align 8
  %31 = load i32, i32* @IPROC_ADC_INTR_MASK, align 4
  %32 = load i32, i32* @IPROC_ADC_AUXDATA_RDY_INTR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 0, %34
  %36 = load i32, i32* @IPROC_ADC_INTR, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @IPROC_ADC_AUXDATA_RDY_INTR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_update_bits(i32 %29, i64 %30, i32 %33, i32 %39)
  %41 = load i32, i32* @IPROC_ADC_CHANNEL_ROUNDS, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = load i32, i32* @IPROC_ADC_CHANNEL_MODE_SNAPSHOT, align 4
  %44 = load i32, i32* @IPROC_ADC_CHANNEL_MODE, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load i32, i32* @IPROC_ADC_CHANNEL_ENABLE, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @IPROC_ADC_CHANNEL_ROUNDS_MASK, align 4
  %51 = load i32, i32* @IPROC_ADC_CHANNEL_MODE_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IPROC_ADC_CHANNEL_ENABLE_MASK, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %56 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @IPROC_ADC_CHANNEL_REGCTL1, align 8
  %59 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @regmap_update_bits(i32 %57, i64 %63, i32 %64, i32 %65)
  %67 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %68 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @IPROC_ADC_CHANNEL_REGCTL2, align 8
  %71 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = load i32, i32* @IPROC_ADC_CHANNEL_WATERMARK_MASK, align 4
  %77 = call i32 @regmap_update_bits(i32 %69, i64 %75, i32 %76, i32 1)
  %78 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %79 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* @IPROC_ADC_CHANNEL_INTERRUPT_MASK, align 8
  %82 = load i32, i32* @IPROC_ADC_CHANNEL_OFFSET, align 4
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = load i32, i32* @IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK, align 4
  %88 = load i32, i32* @IPROC_ADC_WATER_MARK_INTR_ENABLE, align 4
  %89 = call i32 @regmap_update_bits(i32 %80, i64 %86, i32 %87, i32 %88)
  %90 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %91 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @IPROC_INTERRUPT_MASK, align 8
  %94 = call i32 @regmap_read(i32 %92, i64 %93, i32* %9)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = load i32, i32* @IPROC_ADC_INTR, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %102 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* @IPROC_INTERRUPT_MASK, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @regmap_write(i32 %103, i64 %104, i32 %105)
  %107 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %108 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* @IPROC_INTERRUPT_MASK, align 8
  %111 = call i32 @regmap_read(i32 %109, i64 %110, i32* %11)
  br label %112

112:                                              ; preds = %123, %3
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @IPROC_ADC_INTMASK_RETRY_ATTEMPTS, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %140

123:                                              ; preds = %116
  %124 = call i32 @udelay(i32 10)
  %125 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %126 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* @IPROC_INTERRUPT_MASK, align 8
  %129 = load i32, i32* @IPROC_ADC_INTR_MASK, align 4
  %130 = load i32, i32* %6, align 4
  %131 = shl i32 1, %130
  %132 = load i32, i32* @IPROC_ADC_INTR, align 4
  %133 = shl i32 %131, %132
  %134 = call i32 @regmap_update_bits(i32 %127, i64 %128, i32 %129, i32 %133)
  %135 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %136 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* @IPROC_INTERRUPT_MASK, align 8
  %139 = call i32 @regmap_read(i32 %137, i64 %138, i32* %11)
  br label %112

140:                                              ; preds = %122, %112
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %145 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @dev_dbg(i32* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @IPROC_ADC_INTMASK_RETRY_ATTEMPTS, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %153 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %152, i32 0, i32 0
  %154 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %155 = load i32, i32* @EIO, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %8, align 4
  br label %183

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157, %140
  %159 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %160 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* @IPROC_INTERRUPT_MASK, align 8
  %163 = call i32 @regmap_read(i32 %161, i64 %162, i32* %11)
  %164 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %165 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %164, i32 0, i32 4
  %166 = load i32, i32* @IPROC_ADC_READ_TIMEOUT, align 4
  %167 = call i64 @wait_for_completion_timeout(i32* %165, i32 %166)
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %158
  %170 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %171 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 65535
  %174 = load i32*, i32** %7, align 8
  store i32 %173, i32* %174, align 4
  store i32 4, i32* %8, align 4
  br label %178

175:                                              ; preds = %158
  %176 = load i32, i32* @ETIMEDOUT, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %8, align 4
  br label %183

178:                                              ; preds = %169
  %179 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %180 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %179, i32 0, i32 2
  %181 = call i32 @mutex_unlock(i32* %180)
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %4, align 4
  br label %213

183:                                              ; preds = %175, %151
  %184 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %185 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* @IPROC_INTERRUPT_MASK, align 8
  %188 = load i32, i32* @IPROC_ADC_INTR_MASK, align 4
  %189 = load i32, i32* %6, align 4
  %190 = shl i32 0, %189
  %191 = load i32, i32* @IPROC_ADC_INTR, align 4
  %192 = shl i32 %190, %191
  %193 = call i32 @regmap_update_bits(i32 %186, i64 %187, i32 %188, i32 %192)
  %194 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %195 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load i64, i64* @IPROC_INTERRUPT_STATUS, align 8
  %198 = load i32, i32* @IPROC_ADC_INTR_MASK, align 4
  %199 = load i32, i32* %6, align 4
  %200 = shl i32 0, %199
  %201 = load i32, i32* @IPROC_ADC_INTR, align 4
  %202 = shl i32 %200, %201
  %203 = call i32 @regmap_update_bits(i32 %196, i64 %197, i32 %198, i32 %202)
  %204 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %205 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %204, i32 0, i32 0
  %206 = call i32 @dev_err(i32* %205, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %207 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %208 = call i32 @iproc_adc_reg_dump(%struct.iio_dev* %207)
  %209 = load %struct.iproc_adc_priv*, %struct.iproc_adc_priv** %13, align 8
  %210 = getelementptr inbounds %struct.iproc_adc_priv, %struct.iproc_adc_priv* %209, i32 0, i32 2
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %183, %178
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.iproc_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iproc_adc_reg_dump(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
