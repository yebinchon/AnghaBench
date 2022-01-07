; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.meson_sar_adc_priv = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@CHAN7_MUX_CH7_INPUT = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG3 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG3_BL30_INITIALIZED = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0_ADC_TEMP_SEN_SEL = common dso_local global i32 0, align 4
@MESON_SAR_ADC_CHAN_LIST = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG3_CTRL_SAMPLING_CLOCK_PHASE = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG3_CNTL_USE_SC_DLY = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELAY = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELAY_SAMPLE_DLY_CNT_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELAY_SAMPLE_DLY_SEL_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELAY_INPUT_DLY_SEL_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_CHAN_10_SW_CHAN0_MUX_SEL_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_CHAN_10_SW = common dso_local global i32 0, align 4
@MESON_SAR_ADC_CHAN_10_SW_CHAN1_MUX_SEL_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_AUX_SW_YP_DRIVE_SW = common dso_local global i32 0, align 4
@MESON_SAR_ADC_AUX_SW_XP_DRIVE_SW = common dso_local global i32 0, align 4
@MESON_SAR_ADC_AUX_SW = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELTA_10 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELTA_10_TS_REVE1 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELTA_10_TS_REVE0 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELTA_10_TS_C_MASK = common dso_local global i32 0, align 4
@MESON_HHI_DPLL_TOP_0_TSC_BIT4 = common dso_local global i32 0, align 4
@MESON_HHI_DPLL_TOP_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to set adc parent to clkin\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set adc clock rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @meson_sar_adc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.meson_sar_adc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %8)
  store %struct.meson_sar_adc_priv* %9, %struct.meson_sar_adc_priv** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = load i32, i32* @CHAN7_MUX_CH7_INPUT, align 4
  %12 = call i32 @meson_sar_adc_set_chan7_mux(%struct.iio_dev* %10, i32 %11)
  %13 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %14 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %21 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MESON_SAR_ADC_REG3, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MESON_SAR_ADC_REG3_BL30_INITIALIZED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %240

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %33 = call i32 @meson_sar_adc_stop_sample_engine(%struct.iio_dev* %32)
  %34 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %35 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MESON_SAR_ADC_REG0, align 4
  %38 = load i32, i32* @MESON_SAR_ADC_REG0_ADC_TEMP_SEN_SEL, align 4
  %39 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %41 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MESON_SAR_ADC_CHAN_LIST, align 4
  %44 = call i32 @regmap_write(i32 %42, i32 %43, i32 0)
  %45 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %46 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MESON_SAR_ADC_REG3, align 4
  %49 = load i32, i32* @MESON_SAR_ADC_REG3_CTRL_SAMPLING_CLOCK_PHASE, align 4
  %50 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %52 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MESON_SAR_ADC_REG3, align 4
  %55 = load i32, i32* @MESON_SAR_ADC_REG3_CNTL_USE_SC_DLY, align 4
  %56 = load i32, i32* @MESON_SAR_ADC_REG3_CNTL_USE_SC_DLY, align 4
  %57 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %59 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MESON_SAR_ADC_DELAY, align 4
  %62 = load i32, i32* @MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK, align 4
  %63 = load i32, i32* @MESON_SAR_ADC_DELAY_SAMPLE_DLY_CNT_MASK, align 4
  %64 = call i32 @FIELD_PREP(i32 %63, i32 10)
  %65 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %64)
  %66 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %67 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MESON_SAR_ADC_DELAY, align 4
  %70 = load i32, i32* @MESON_SAR_ADC_DELAY_SAMPLE_DLY_SEL_MASK, align 4
  %71 = load i32, i32* @MESON_SAR_ADC_DELAY_SAMPLE_DLY_SEL_MASK, align 4
  %72 = call i32 @FIELD_PREP(i32 %71, i32 0)
  %73 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %72)
  %74 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %75 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MESON_SAR_ADC_DELAY, align 4
  %78 = load i32, i32* @MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK, align 4
  %79 = load i32, i32* @MESON_SAR_ADC_DELAY_INPUT_DLY_CNT_MASK, align 4
  %80 = call i32 @FIELD_PREP(i32 %79, i32 10)
  %81 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %80)
  %82 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %83 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MESON_SAR_ADC_DELAY, align 4
  %86 = load i32, i32* @MESON_SAR_ADC_DELAY_INPUT_DLY_SEL_MASK, align 4
  %87 = load i32, i32* @MESON_SAR_ADC_DELAY_INPUT_DLY_SEL_MASK, align 4
  %88 = call i32 @FIELD_PREP(i32 %87, i32 1)
  %89 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 %88)
  %90 = load i32, i32* @MESON_SAR_ADC_CHAN_10_SW_CHAN0_MUX_SEL_MASK, align 4
  %91 = call i32 @FIELD_PREP(i32 %90, i32 0)
  store i32 %91, i32* %5, align 4
  %92 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %93 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MESON_SAR_ADC_CHAN_10_SW, align 4
  %96 = load i32, i32* @MESON_SAR_ADC_CHAN_10_SW_CHAN0_MUX_SEL_MASK, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @MESON_SAR_ADC_CHAN_10_SW_CHAN1_MUX_SEL_MASK, align 4
  %100 = call i32 @FIELD_PREP(i32 %99, i32 1)
  store i32 %100, i32* %5, align 4
  %101 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %102 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MESON_SAR_ADC_CHAN_10_SW, align 4
  %105 = load i32, i32* @MESON_SAR_ADC_CHAN_10_SW_CHAN1_MUX_SEL_MASK, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %108

108:                                              ; preds = %118, %31
  %109 = load i32, i32* %6, align 4
  %110 = icmp sle i32 %109, 7
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @MESON_SAR_ADC_AUX_SW_MUX_SEL_CHAN_SHIFT(i32 %113)
  %115 = shl i32 %112, %114
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %108

121:                                              ; preds = %108
  %122 = load i32, i32* @MESON_SAR_ADC_AUX_SW_YP_DRIVE_SW, align 4
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @MESON_SAR_ADC_AUX_SW_XP_DRIVE_SW, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %129 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MESON_SAR_ADC_AUX_SW, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @regmap_write(i32 %130, i32 %131, i32 %132)
  %134 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %135 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %190

138:                                              ; preds = %121
  %139 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %140 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MESON_SAR_ADC_DELTA_10, align 4
  %143 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_REVE1, align 4
  %144 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_REVE1, align 4
  %145 = call i32 @regmap_update_bits(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %147 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MESON_SAR_ADC_DELTA_10, align 4
  %150 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_REVE0, align 4
  %151 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_REVE0, align 4
  %152 = call i32 @regmap_update_bits(i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_C_MASK, align 4
  %154 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %155 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @FIELD_PREP(i32 %153, i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %159 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MESON_SAR_ADC_DELTA_10, align 4
  %162 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_C_MASK, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @regmap_update_bits(i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %166 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 5
  br i1 %170, label %171, label %189

171:                                              ; preds = %138
  %172 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %173 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @BIT(i32 4)
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @MESON_HHI_DPLL_TOP_0_TSC_BIT4, align 4
  store i32 %179, i32* %5, align 4
  br label %181

180:                                              ; preds = %171
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %178
  %182 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %183 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MESON_HHI_DPLL_TOP_0, align 4
  %186 = load i32, i32* @MESON_HHI_DPLL_TOP_0_TSC_BIT4, align 4
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @regmap_update_bits(i32 %184, i32 %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %181, %138
  br label %203

190:                                              ; preds = %121
  %191 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %192 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @MESON_SAR_ADC_DELTA_10, align 4
  %195 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_REVE1, align 4
  %196 = call i32 @regmap_update_bits(i32 %193, i32 %194, i32 %195, i32 0)
  %197 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %198 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @MESON_SAR_ADC_DELTA_10, align 4
  %201 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_REVE0, align 4
  %202 = call i32 @regmap_update_bits(i32 %199, i32 %200, i32 %201, i32 0)
  br label %203

203:                                              ; preds = %190, %189
  %204 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %205 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %208 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @clk_set_parent(i32 %206, i32 %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %203
  %214 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %215 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @dev_err(i32 %217, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %2, align 4
  br label %240

220:                                              ; preds = %203
  %221 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %222 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %225 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %224, i32 0, i32 1
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @clk_set_rate(i32 %223, i32 %228)
  store i32 %229, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %220
  %233 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %234 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @dev_err(i32 %236, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %238 = load i32, i32* %7, align 4
  store i32 %238, i32* %2, align 4
  br label %240

239:                                              ; preds = %220
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %232, %213, %29
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_set_chan7_mux(%struct.iio_dev*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @meson_sar_adc_stop_sample_engine(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @MESON_SAR_ADC_AUX_SW_MUX_SEL_CHAN_SHIFT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
