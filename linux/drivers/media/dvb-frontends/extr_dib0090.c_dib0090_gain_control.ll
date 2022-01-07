; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_gain_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_gain_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i32, i64, i32, i32*, i32, i32*, i64, i32, i64, %struct.TYPE_8__*, i64, %struct.TYPE_10__*, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_9__ = type { i64 }

@CT_AGC_START = common dso_local global i32 0, align 4
@BAND_CBAND = common dso_local global i64 0, align 8
@BAND_VHF = common dso_local global i64 0, align 8
@rf_ramp_pwm_cband_7090p = common dso_local global i32 0, align 4
@bb_ramp_pwm_normal_socs = common dso_local global i32 0, align 4
@rf_ramp_pwm_uhf = common dso_local global i32 0, align 4
@bb_ramp_pwm_normal = common dso_local global i32 0, align 4
@WBD_ALPHA = common dso_local global i32 0, align 4
@GAIN_ALPHA = common dso_local global i32 0, align 4
@CT_AGC_STEP_0 = common dso_local global i32 0, align 4
@CT_AGC_STEP_1 = common dso_local global i32 0, align 4
@ADC_TARGET = common dso_local global i64 0, align 8
@CT_AGC_STOP = common dso_local global i32 0, align 4
@BAND_SBAND = common dso_local global i64 0, align 8
@QAM_16 = common dso_local global i64 0, align 8
@QAM_64 = common dso_local global i64 0, align 8
@STANDARD_DAB = common dso_local global i64 0, align 8
@STANDARD_DVBT = common dso_local global i64 0, align 8
@SYS_ISDBT = common dso_local global i64 0, align 8
@bb_ramp_boost = common dso_local global i32 0, align 4
@rf_ramp_pwm_cband = common dso_local global i32 0, align 4
@rf_ramp_pwm_vhf = common dso_local global i32 0, align 4
@rf_ramp_sband = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0090_gain_control(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.dib0090_state*, %struct.dib0090_state** %15, align 8
  store %struct.dib0090_state* %16, %struct.dib0090_state** %3, align 8
  %17 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %18 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %17, i32 0, i32 0
  store i32* %18, i32** %4, align 8
  store i32 10, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CT_AGC_START, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %1
  %24 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %25 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %24, i32 0, i32 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %27 = call i32 @dib0090_write_reg(%struct.dib0090_state* %26, i32 4, i32 0)
  %28 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %29 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BAND_CBAND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %23
  %34 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %35 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BAND_VHF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33, %23
  %40 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %41 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %40, i32 0, i32 12
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %47 = load i32, i32* @rf_ramp_pwm_cband_7090p, align 4
  %48 = call i32 @dib0090_set_rframp(%struct.dib0090_state* %46, i32 %47)
  %49 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %50 = load i32, i32* @bb_ramp_pwm_normal_socs, align 4
  %51 = call i32 @dib0090_set_bbramp(%struct.dib0090_state* %49, i32 %50)
  br label %59

52:                                               ; preds = %39, %33
  %53 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %54 = load i32, i32* @rf_ramp_pwm_uhf, align 4
  %55 = call i32 @dib0090_set_rframp(%struct.dib0090_state* %53, i32 %54)
  %56 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %57 = load i32, i32* @bb_ramp_pwm_normal, align 4
  %58 = call i32 @dib0090_set_bbramp(%struct.dib0090_state* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %61 = call i32 @dib0090_write_reg(%struct.dib0090_state* %60, i32 50, i32 0)
  %62 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %63 = call i32 @dib0090_write_reg(%struct.dib0090_state* %62, i32 57, i32 0)
  %64 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %65 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %66 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %65, i32 0, i32 13
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dib0090_wbd_target(%struct.dib0090_state* %64, i32 %67)
  %69 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %70 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WBD_ALPHA, align 4
  %75 = shl i32 %73, %74
  %76 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %77 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %79 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %84 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %82, %87
  %89 = sdiv i32 %88, 2
  %90 = load i32, i32* @GAIN_ALPHA, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %93 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @CT_AGC_STEP_0, align 4
  %95 = load i32*, i32** %4, align 8
  store i32 %94, i32* %95, align 4
  br label %204

96:                                               ; preds = %1
  %97 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %98 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %203, label %101

101:                                              ; preds = %96
  store i64 0, i64* %10, align 8
  %102 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %103 = call i64 @dib0090_get_slow_adc_val(%struct.dib0090_state* %102)
  store i64 %103, i64* %6, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CT_AGC_STEP_0, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i64 5, i64* %12, align 8
  br label %110

109:                                              ; preds = %101
  store i64 1, i64* %12, align 8
  br label %110

110:                                              ; preds = %109, %108
  store i64 0, i64* %11, align 8
  br label %111

111:                                              ; preds = %123, %110
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %117 = call i64 @dib0090_get_slow_adc_val(%struct.dib0090_state* %116)
  store i64 %117, i64* %6, align 8
  %118 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @dib0090_wbd_to_db(%struct.dib0090_state* %118, i64 %119)
  %121 = load i64, i64* %10, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %115
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %111

126:                                              ; preds = %111
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %10, align 8
  %129 = sdiv i64 %128, %127
  store i64 %129, i64* %10, align 8
  %130 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %131 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub nsw i64 %132, %133
  store i64 %134, i64* %8, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @CT_AGC_STEP_0, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %126
  %140 = load i64, i64* %8, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %144 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %149 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %148, i32 0, i32 12
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %159

154:                                              ; preds = %147, %142, %139
  %155 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %156 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %155, i32 0, i32 10
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @CT_AGC_STEP_1, align 4
  %158 = load i32*, i32** %4, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %154, %153
  br label %202

160:                                              ; preds = %126
  %161 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %162 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %161, i32 0, i32 11
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = bitcast {}** %164 to i32 (%struct.dvb_frontend*)**
  %166 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %165, align 8
  %167 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %168 = call i32 %166(%struct.dvb_frontend* %167)
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = mul nsw i32 %169, 355774
  %171 = add nsw i32 %170, 1048576
  %172 = ashr i32 %171, 21
  store i32 %172, i32* %13, align 4
  %173 = load i64, i64* @ADC_TARGET, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %13, align 4
  %176 = sub nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %9, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @CT_AGC_STEP_1, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %160
  %183 = load i64, i64* %9, align 8
  %184 = call i32 @abs(i64 %183)
  %185 = icmp slt i32 %184, 50
  br i1 %185, label %192, label %186

186:                                              ; preds = %182
  %187 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %188 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = icmp sgt i64 %189, 5
  br i1 %191, label %192, label %199

192:                                              ; preds = %186, %182
  %193 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %194 = call i32 @dib0090_write_reg(%struct.dib0090_state* %193, i32 2, i32 39328)
  %195 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %196 = call i32 @dib0090_write_reg(%struct.dib0090_state* %195, i32 4, i32 1)
  %197 = load i32, i32* @CT_AGC_STOP, align 4
  %198 = load i32*, i32** %4, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %192, %186
  br label %201

200:                                              ; preds = %160
  store i32 100, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %200, %199
  br label %202

202:                                              ; preds = %201, %159
  br label %203

203:                                              ; preds = %202, %96
  br label %204

204:                                              ; preds = %203, %59
  %205 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %206 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %204
  %210 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %211 = load i64, i64* %9, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @dib0090_gain_apply(%struct.dib0090_state* %210, i64 %211, i64 %212, i32 %213)
  br label %215

215:                                              ; preds = %209, %204
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dib0090_set_rframp(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_set_bbramp(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_wbd_target(%struct.dib0090_state*, i32) #1

declare dso_local i64 @dib0090_get_slow_adc_val(%struct.dib0090_state*) #1

declare dso_local i64 @dib0090_wbd_to_db(%struct.dib0090_state*, i64) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dib0090_gain_apply(%struct.dib0090_state*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
