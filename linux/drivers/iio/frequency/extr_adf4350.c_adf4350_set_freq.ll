; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf4350_state = type { i64, i32, i32, i64, i32, i32, i32, i32*, i64, %struct.TYPE_2__*, %struct.adf4350_platform_data* }
%struct.TYPE_2__ = type { i32 }
%struct.adf4350_platform_data = type { i64, i32, i32, i32, i64, i64 }

@ADF4350_MAX_OUT_FREQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ADF4350_MAX_FREQ_45_PRESC = common dso_local global i64 0, align 8
@ADF4350_REG1_PRESCALER = common dso_local global i32 0, align 4
@ADF4350_MIN_VCO_FREQ = common dso_local global i64 0, align 8
@ADF4350_MAX_R_CNT = common dso_local global i64 0, align 8
@ADF4350_MAX_MODULUS = common dso_local global i32 0, align 4
@ADF4350_MAX_BANDSEL_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"VCO: %llu Hz, PFD %lu Hz\0AREF_DIV %d, R0_INT %d, R0_FRACT %d\0AR1_MOD %d, RF_DIV %d\0APRESCALER %s, BAND_SEL_DIV %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"8/9\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"4/5\00", align 1
@ADF4350_REG0 = common dso_local global i64 0, align 8
@ADF4350_REG1 = common dso_local global i64 0, align 8
@ADF4350_REG2_DOUBLE_BUFF_EN = common dso_local global i32 0, align 4
@ADF4350_REG2_RMULT2_EN = common dso_local global i32 0, align 4
@ADF4350_REG2_RDIV2_EN = common dso_local global i32 0, align 4
@ADF4350_REG2_PD_POLARITY_POS = common dso_local global i32 0, align 4
@ADF4350_REG2_LDP_6ns = common dso_local global i32 0, align 4
@ADF4350_REG2_LDF_INT_N = common dso_local global i32 0, align 4
@ADF4350_REG2 = common dso_local global i64 0, align 8
@ADF4350_REG3_12BIT_CSR_EN = common dso_local global i32 0, align 4
@ADF4351_REG3_CHARGE_CANCELLATION_EN = common dso_local global i32 0, align 4
@ADF4351_REG3_ANTI_BACKLASH_3ns_EN = common dso_local global i32 0, align 4
@ADF4351_REG3_BAND_SEL_CLOCK_MODE_HIGH = common dso_local global i32 0, align 4
@ADF4350_REG3 = common dso_local global i64 0, align 8
@ADF4350_REG4_FEEDBACK_FUND = common dso_local global i32 0, align 4
@ADF4350_REG4_RF_OUT_EN = common dso_local global i32 0, align 4
@ADF4350_REG4_AUX_OUTPUT_EN = common dso_local global i32 0, align 4
@ADF4350_REG4_AUX_OUTPUT_FUND = common dso_local global i32 0, align 4
@ADF4350_REG4_MUTE_TILL_LOCK_EN = common dso_local global i32 0, align 4
@ADF4350_REG4 = common dso_local global i64 0, align 8
@ADF4350_REG5_LD_PIN_MODE_DIGITAL = common dso_local global i32 0, align 4
@ADF4350_REG5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf4350_state*, i64)* @adf4350_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_set_freq(%struct.adf4350_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adf4350_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.adf4350_platform_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.adf4350_state* %0, %struct.adf4350_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %15 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %14, i32 0, i32 10
  %16 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %15, align 8
  store %struct.adf4350_platform_data* %16, %struct.adf4350_platform_data** %6, align 8
  store i64 0, i64* %12, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ADF4350_MAX_OUT_FREQ, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %23 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %333

29:                                               ; preds = %20
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @ADF4350_MAX_FREQ_45_PRESC, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ADF4350_REG1_PRESCALER, align 4
  store i32 %34, i32* %9, align 4
  store i64 75, i64* %11, align 8
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  store i64 23, i64* %11, align 8
  br label %36

36:                                               ; preds = %35, %33
  %37 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %38 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %43, %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @ADF4350_MIN_VCO_FREQ, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = shl i64 %44, 1
  store i64 %45, i64* %5, align 8
  %46 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %47 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %6, align 8
  %52 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %6, align 8
  %57 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %62 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %127, %60
  br label %65

65:                                               ; preds = %96, %64
  br label %66

66:                                               ; preds = %93, %65
  %67 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @adf4350_tune_r_cnt(%struct.adf4350_state* %67, i64 %68)
  store i64 %69, i64* %12, align 8
  %70 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %71 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sdiv i32 %72, %73
  %75 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %76 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @ADF4350_MAX_R_CNT, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %83

83:                                               ; preds = %80, %66
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %86 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ADF4350_MAX_MODULUS, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi i1 [ false, %84 ], [ %92, %90 ]
  br i1 %94, label %66, label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %12, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %65, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %102 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 %100, %104
  %106 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %107 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = add i64 %105, %110
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %114 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @do_div(i64 %112, i32 %115)
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %119 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @do_div(i64 %117, i32 %120)
  %122 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %123 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %126 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %125, i32 0, i32 3
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %99
  %128 = load i64, i64* %11, align 8
  %129 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %130 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %64, label %133

133:                                              ; preds = %127
  %134 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %135 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ADF4350_MAX_BANDSEL_CLK, align 4
  %138 = call i32 @DIV_ROUND_UP(i32 %136, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %140 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %133
  %144 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %145 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %143
  %149 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %150 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %153 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @gcd(i32 %151, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %158 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %163 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = sdiv i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %171

166:                                              ; preds = %143, %133
  %167 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %168 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %167, i32 0, i32 6
  store i32 0, i32* %168, align 8
  %169 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %170 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %169, i32 0, i32 4
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %148
  %172 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %173 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %172, i32 0, i32 9
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i64, i64* %5, align 8
  %177 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %178 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %182 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %185 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %188 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %191 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = shl i32 1, %192
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @dev_dbg(i32* %175, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i64 %176, i32 %179, i64 %180, i64 %183, i32 %186, i32 %189, i32 %193, i8* %197, i32 %198)
  %200 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %201 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @ADF4350_REG0_INT(i64 %202)
  %204 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %205 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @ADF4350_REG0_FRACT(i32 %206)
  %208 = or i32 %203, %207
  %209 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %210 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %209, i32 0, i32 7
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @ADF4350_REG0, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %208, i32* %213, align 4
  %214 = call i32 @ADF4350_REG1_PHASE(i32 1)
  %215 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %216 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ADF4350_REG1_MOD(i32 %217)
  %219 = or i32 %214, %218
  %220 = load i32, i32* %9, align 4
  %221 = or i32 %219, %220
  %222 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %223 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %222, i32 0, i32 7
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @ADF4350_REG1, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load i64, i64* %12, align 8
  %228 = call i32 @ADF4350_REG2_10BIT_R_CNT(i64 %227)
  %229 = load i32, i32* @ADF4350_REG2_DOUBLE_BUFF_EN, align 4
  %230 = or i32 %228, %229
  %231 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %6, align 8
  %232 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %171
  %236 = load i32, i32* @ADF4350_REG2_RMULT2_EN, align 4
  br label %238

237:                                              ; preds = %171
  br label %238

238:                                              ; preds = %237, %235
  %239 = phi i32 [ %236, %235 ], [ 0, %237 ]
  %240 = or i32 %230, %239
  %241 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %6, align 8
  %242 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  %246 = load i32, i32* @ADF4350_REG2_RDIV2_EN, align 4
  br label %248

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %247, %245
  %249 = phi i32 [ %246, %245 ], [ 0, %247 ]
  %250 = or i32 %240, %249
  %251 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %6, align 8
  %252 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ADF4350_REG2_PD_POLARITY_POS, align 4
  %255 = load i32, i32* @ADF4350_REG2_LDP_6ns, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @ADF4350_REG2_LDF_INT_N, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @ADF4350_REG2_CHARGE_PUMP_CURR_uA(i32 5000)
  %260 = or i32 %258, %259
  %261 = call i32 @ADF4350_REG2_MUXOUT(i32 7)
  %262 = or i32 %260, %261
  %263 = call i32 @ADF4350_REG2_NOISE_MODE(i32 3)
  %264 = or i32 %262, %263
  %265 = and i32 %253, %264
  %266 = or i32 %250, %265
  %267 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %268 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* @ADF4350_REG2, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32 %266, i32* %271, align 4
  %272 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %6, align 8
  %273 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ADF4350_REG3_12BIT_CLKDIV(i32 4095)
  %276 = call i32 @ADF4350_REG3_12BIT_CLKDIV_MODE(i32 3)
  %277 = or i32 %275, %276
  %278 = load i32, i32* @ADF4350_REG3_12BIT_CSR_EN, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @ADF4351_REG3_CHARGE_CANCELLATION_EN, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @ADF4351_REG3_ANTI_BACKLASH_3ns_EN, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @ADF4351_REG3_BAND_SEL_CLOCK_MODE_HIGH, align 4
  %285 = or i32 %283, %284
  %286 = and i32 %274, %285
  %287 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %288 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %287, i32 0, i32 7
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @ADF4350_REG3, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32 %286, i32* %291, align 4
  %292 = load i32, i32* @ADF4350_REG4_FEEDBACK_FUND, align 4
  %293 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %294 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @ADF4350_REG4_RF_DIV_SEL(i32 %295)
  %297 = or i32 %292, %296
  %298 = load i32, i32* %13, align 4
  %299 = call i32 @ADF4350_REG4_8BIT_BAND_SEL_CLKDIV(i32 %298)
  %300 = or i32 %297, %299
  %301 = load i32, i32* @ADF4350_REG4_RF_OUT_EN, align 4
  %302 = or i32 %300, %301
  %303 = load %struct.adf4350_platform_data*, %struct.adf4350_platform_data** %6, align 8
  %304 = getelementptr inbounds %struct.adf4350_platform_data, %struct.adf4350_platform_data* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @ADF4350_REG4_OUTPUT_PWR(i32 3)
  %307 = call i32 @ADF4350_REG4_AUX_OUTPUT_PWR(i32 3)
  %308 = or i32 %306, %307
  %309 = load i32, i32* @ADF4350_REG4_AUX_OUTPUT_EN, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @ADF4350_REG4_AUX_OUTPUT_FUND, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* @ADF4350_REG4_MUTE_TILL_LOCK_EN, align 4
  %314 = or i32 %312, %313
  %315 = and i32 %305, %314
  %316 = or i32 %302, %315
  %317 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %318 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %317, i32 0, i32 7
  %319 = load i32*, i32** %318, align 8
  %320 = load i64, i64* @ADF4350_REG4, align 8
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  store i32 %316, i32* %321, align 4
  %322 = load i32, i32* @ADF4350_REG5_LD_PIN_MODE_DIGITAL, align 4
  %323 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %324 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %323, i32 0, i32 7
  %325 = load i32*, i32** %324, align 8
  %326 = load i64, i64* @ADF4350_REG5, align 8
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32 %322, i32* %327, align 4
  %328 = load i64, i64* %5, align 8
  %329 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %330 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %329, i32 0, i32 8
  store i64 %328, i64* %330, align 8
  %331 = load %struct.adf4350_state*, %struct.adf4350_state** %4, align 8
  %332 = call i32 @adf4350_sync_config(%struct.adf4350_state* %331)
  store i32 %332, i32* %3, align 4
  br label %333

333:                                              ; preds = %248, %26
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i64 @adf4350_tune_r_cnt(%struct.adf4350_state*, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i64, i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ADF4350_REG0_INT(i64) #1

declare dso_local i32 @ADF4350_REG0_FRACT(i32) #1

declare dso_local i32 @ADF4350_REG1_PHASE(i32) #1

declare dso_local i32 @ADF4350_REG1_MOD(i32) #1

declare dso_local i32 @ADF4350_REG2_10BIT_R_CNT(i64) #1

declare dso_local i32 @ADF4350_REG2_CHARGE_PUMP_CURR_uA(i32) #1

declare dso_local i32 @ADF4350_REG2_MUXOUT(i32) #1

declare dso_local i32 @ADF4350_REG2_NOISE_MODE(i32) #1

declare dso_local i32 @ADF4350_REG3_12BIT_CLKDIV(i32) #1

declare dso_local i32 @ADF4350_REG3_12BIT_CLKDIV_MODE(i32) #1

declare dso_local i32 @ADF4350_REG4_RF_DIV_SEL(i32) #1

declare dso_local i32 @ADF4350_REG4_8BIT_BAND_SEL_CLKDIV(i32) #1

declare dso_local i32 @ADF4350_REG4_OUTPUT_PWR(i32) #1

declare dso_local i32 @ADF4350_REG4_AUX_OUTPUT_PWR(i32) #1

declare dso_local i32 @adf4350_sync_config(%struct.adf4350_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
