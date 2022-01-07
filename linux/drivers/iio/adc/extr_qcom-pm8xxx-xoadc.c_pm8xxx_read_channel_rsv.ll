; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_read_channel_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-pm8xxx-xoadc.c_pm8xxx_read_channel_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_xoadc = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.pm8xxx_chan_info = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"read channel \22%s\22, amux %d, prescale/mux: %d, rsv %d\0A\00", align 1
@ADC_AMUX_SEL_SHIFT = common dso_local global i32 0, align 4
@ADC_AMUX_PREMUX_SHIFT = common dso_local global i32 0, align 4
@ADC_ARB_USRP_AMUX_CNTRL = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV_RST = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV_DTEST0 = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV_DTEST1 = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV_OP = common dso_local global i32 0, align 4
@PM8XXX_CHANNEL_MUXOFF = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV_IP_SEL0 = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV_IP_SEL1 = common dso_local global i32 0, align 4
@ADC_RSV_IP_SEL_SHIFT = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV_TRM = common dso_local global i32 0, align 4
@ADC_ARB_USRP_RSV = common dso_local global i32 0, align 4
@ADC_ARB_USRP_ANA_PARAM = common dso_local global i32 0, align 4
@ADC_ARB_USRP_ANA_PARAM_DIS = common dso_local global i32 0, align 4
@ADC_ARB_USRP_DIG_PARAM = common dso_local global i32 0, align 4
@ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT0 = common dso_local global i32 0, align 4
@ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT1 = common dso_local global i32 0, align 4
@ADC_DIG_PARAM_DEC_SHIFT = common dso_local global i32 0, align 4
@ADC_ARB_USRP_ANA_PARAM_EN = common dso_local global i32 0, align 4
@ADC_ARB_USRP_CNTRL = common dso_local global i32 0, align 4
@ADC_ARB_USRP_CNTRL_EN_ARB = common dso_local global i32 0, align 4
@ADC_ARB_USRP_CNTRL_REQ = common dso_local global i32 0, align 4
@VADC_CONV_TIME_MAX_US = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"conversion timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ADC_ARB_USRP_DATA0 = common dso_local global i32 0, align 4
@ADC_ARB_USRP_DATA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_xoadc*, %struct.pm8xxx_chan_info*, i32, i32*, i32)* @pm8xxx_read_channel_rsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_read_channel_rsv(%struct.pm8xxx_xoadc* %0, %struct.pm8xxx_chan_info* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.pm8xxx_xoadc*, align 8
  %7 = alloca %struct.pm8xxx_chan_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pm8xxx_xoadc* %0, %struct.pm8xxx_xoadc** %6, align 8
  store %struct.pm8xxx_chan_info* %1, %struct.pm8xxx_chan_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %18 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %21 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %24 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %29 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27, i32 %32, i32 %33)
  %35 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %36 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %39 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ADC_AMUX_SEL_SHIFT, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %46 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ADC_AMUX_PREMUX_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %55 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ADC_ARB_USRP_AMUX_CNTRL, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @regmap_write(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %5
  br label %254

63:                                               ; preds = %5
  %64 = load i32, i32* @ADC_ARB_USRP_RSV_RST, align 4
  %65 = load i32, i32* @ADC_ARB_USRP_RSV_DTEST0, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ADC_ARB_USRP_RSV_DTEST1, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ADC_ARB_USRP_RSV_OP, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %72 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %63
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %82 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PM8XXX_CHANNEL_MUXOFF, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @ADC_ARB_USRP_RSV_IP_SEL0, align 4
  store i32 %89, i32* %14, align 4
  br label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @ADC_ARB_USRP_RSV_IP_SEL1, align 4
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %111

93:                                               ; preds = %77, %63
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 255
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %98 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ADC_RSV_IP_SEL_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* @ADC_ARB_USRP_RSV_TRM, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %14, align 4
  br label %110

104:                                              ; preds = %93
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ADC_RSV_IP_SEL_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* @ADC_ARB_USRP_RSV_TRM, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %104, %96
  br label %111

111:                                              ; preds = %110, %92
  %112 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %113 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ADC_ARB_USRP_RSV, align 4
  %116 = load i32, i32* %13, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @regmap_update_bits(i32 %114, i32 %115, i32 %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %254

123:                                              ; preds = %111
  %124 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %125 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ADC_ARB_USRP_ANA_PARAM, align 4
  %128 = load i32, i32* @ADC_ARB_USRP_ANA_PARAM_DIS, align 4
  %129 = call i32 @regmap_write(i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %254

133:                                              ; preds = %123
  %134 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %135 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @ADC_ARB_USRP_DIG_PARAM, align 4
  %138 = load i32, i32* @ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT0, align 4
  %139 = load i32, i32* @ADC_ARB_USRP_DIG_PARAM_SEL_SHIFT1, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.pm8xxx_chan_info*, %struct.pm8xxx_chan_info** %7, align 8
  %142 = getelementptr inbounds %struct.pm8xxx_chan_info, %struct.pm8xxx_chan_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ADC_DIG_PARAM_DEC_SHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = or i32 %140, %145
  %147 = call i32 @regmap_write(i32 %136, i32 %137, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %254

151:                                              ; preds = %133
  %152 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %153 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ADC_ARB_USRP_ANA_PARAM, align 4
  %156 = load i32, i32* @ADC_ARB_USRP_ANA_PARAM_EN, align 4
  %157 = call i32 @regmap_write(i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %254

161:                                              ; preds = %151
  %162 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %163 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ADC_ARB_USRP_CNTRL, align 4
  %166 = load i32, i32* @ADC_ARB_USRP_CNTRL_EN_ARB, align 4
  %167 = call i32 @regmap_write(i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %254

171:                                              ; preds = %161
  %172 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %173 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ADC_ARB_USRP_CNTRL, align 4
  %176 = load i32, i32* @ADC_ARB_USRP_CNTRL_EN_ARB, align 4
  %177 = call i32 @regmap_write(i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %254

181:                                              ; preds = %171
  %182 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %183 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %182, i32 0, i32 3
  %184 = call i32 @reinit_completion(i32* %183)
  %185 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %186 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @ADC_ARB_USRP_CNTRL, align 4
  %189 = load i32, i32* @ADC_ARB_USRP_CNTRL_EN_ARB, align 4
  %190 = load i32, i32* @ADC_ARB_USRP_CNTRL_REQ, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @regmap_write(i32 %187, i32 %188, i32 %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %181
  br label %254

196:                                              ; preds = %181
  %197 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %198 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %197, i32 0, i32 3
  %199 = load i32, i32* @VADC_CONV_TIME_MAX_US, align 4
  %200 = call i32 @wait_for_completion_timeout(i32* %198, i32 %199)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %196
  %204 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %205 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @dev_err(i32 %206, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %208 = load i32, i32* @ETIMEDOUT, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %11, align 4
  br label %254

210:                                              ; preds = %196
  %211 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %212 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @ADC_ARB_USRP_DATA0, align 4
  %215 = call i32 @regmap_read(i32 %213, i32 %214, i32* %12)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %254

219:                                              ; preds = %210
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %15, align 4
  %221 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %222 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @ADC_ARB_USRP_DATA1, align 4
  %225 = call i32 @regmap_read(i32 %223, i32 %224, i32* %12)
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  br label %254

229:                                              ; preds = %219
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %16, align 4
  %231 = load i32, i32* %16, align 4
  %232 = shl i32 %231, 8
  %233 = load i32, i32* %15, align 4
  %234 = or i32 %232, %233
  %235 = load i32*, i32** %9, align 8
  store i32 %234, i32* %235, align 4
  %236 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %237 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @ADC_ARB_USRP_CNTRL, align 4
  %240 = call i32 @regmap_write(i32 %238, i32 %239, i32 0)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %229
  br label %254

244:                                              ; preds = %229
  %245 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %246 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @ADC_ARB_USRP_CNTRL, align 4
  %249 = call i32 @regmap_write(i32 %247, i32 %248, i32 0)
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  br label %254

253:                                              ; preds = %244
  br label %254

254:                                              ; preds = %253, %252, %243, %228, %218, %203, %195, %180, %170, %160, %150, %132, %122, %62
  %255 = load %struct.pm8xxx_xoadc*, %struct.pm8xxx_xoadc** %6, align 8
  %256 = getelementptr inbounds %struct.pm8xxx_xoadc, %struct.pm8xxx_xoadc* %255, i32 0, i32 0
  %257 = call i32 @mutex_unlock(i32* %256)
  %258 = load i32, i32* %11, align 4
  ret i32 %258
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
