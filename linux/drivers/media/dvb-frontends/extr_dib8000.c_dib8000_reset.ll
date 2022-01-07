; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, %struct.TYPE_4__, i64, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error : dib8000 MA not supported\0A\00", align 1
@DIB8000_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_ADC_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"using standard PAD-drive-settings, please adjust settings in config-struct to be optimal.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GPIO reset was not successful.\0A\00", align 1
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"OUTPUT_MODE could not be reset.\0A\00", align 1
@dib8000_defaults = common dso_local global i32* null, align 8
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_OFF = common dso_local global i32 0, align 4
@DIB8000_POWER_INTERFACE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %4, align 8
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 5
  %13 = call i32 @dib8000_identify(i32* %12)
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %226

20:                                               ; preds = %1
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %22 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 32912
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %27 = call i32 @dib8000_write_word(%struct.dib8000_state* %26, i32 1287, i32 3)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %30 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 32768
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %37 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %36, i32 0, i32 4
  %38 = call i32 @dibx000_reset_i2c_master(i32* %37)
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %40 = load i32, i32* @DIB8000_POWER_ALL, align 4
  %41 = call i32 @dib8000_set_power_mode(%struct.dib8000_state* %39, i32 %40)
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %43 = load i32, i32* @DIBX000_ADC_OFF, align 4
  %44 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %42, i32 %43)
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %46 = call i32 @dib8000_write_word(%struct.dib8000_state* %45, i32 770, i32 65535)
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %48 = call i32 @dib8000_write_word(%struct.dib8000_state* %47, i32 771, i32 65535)
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %50 = call i32 @dib8000_write_word(%struct.dib8000_state* %49, i32 772, i32 65532)
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %52 = call i32 @dib8000_write_word(%struct.dib8000_state* %51, i32 898, i32 12)
  %53 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %54 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 32912
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %59 = call i32 @dib8000_write_word(%struct.dib8000_state* %58, i32 1280, i32 69)
  br label %63

60:                                               ; preds = %35
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %62 = call i32 @dib8000_write_word(%struct.dib8000_state* %61, i32 1280, i32 77)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %65 = call i32 @dib8000_write_word(%struct.dib8000_state* %64, i32 1281, i32 12)
  %66 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %67 = call i32 @dib8000_write_word(%struct.dib8000_state* %66, i32 770, i32 0)
  %68 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %69 = call i32 @dib8000_write_word(%struct.dib8000_state* %68, i32 771, i32 0)
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %71 = call i32 @dib8000_write_word(%struct.dib8000_state* %70, i32 772, i32 0)
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %73 = call i32 @dib8000_write_word(%struct.dib8000_state* %72, i32 898, i32 4)
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %75 = call i32 @dib8000_write_word(%struct.dib8000_state* %74, i32 1280, i32 0)
  %76 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %77 = call i32 @dib8000_write_word(%struct.dib8000_state* %76, i32 1281, i32 0)
  %78 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %79 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 32912
  br i1 %81, label %82, label %100

82:                                               ; preds = %63
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %84 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %90 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %91 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dib8000_write_word(%struct.dib8000_state* %89, i32 906, i32 %93)
  br label %99

95:                                               ; preds = %82
  %96 = call i32 @dprintk(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %98 = call i32 @dib8000_write_word(%struct.dib8000_state* %97, i32 906, i32 11672)
  br label %99

99:                                               ; preds = %95, %88
  br label %100

100:                                              ; preds = %99, %63
  %101 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %102 = call i32 @dib8000_reset_pll(%struct.dib8000_state* %101)
  %103 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %104 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 32912
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %109 = call i32 @dib8000_write_word(%struct.dib8000_state* %108, i32 898, i32 4)
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %112 = call i64 @dib8000_reset_gpio(%struct.dib8000_state* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  %117 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %118 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 32912
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %123 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %124 = call i64 @dib8000_set_output_mode(%struct.dvb_frontend* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121, %116
  %129 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %130 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %129, i32 0, i32 3
  store i32* null, i32** %130, align 8
  %131 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %132 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %140 = call i32 @dib8000_write_word(%struct.dib8000_state* %139, i32 40, i32 1877)
  br label %144

141:                                              ; preds = %128
  %142 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %143 = call i32 @dib8000_write_word(%struct.dib8000_state* %142, i32 40, i32 8021)
  br label %144

144:                                              ; preds = %141, %138
  store i32 0, i32* %5, align 4
  %145 = load i32*, i32** @dib8000_defaults, align 8
  store i32* %145, i32** %7, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %7, align 8
  %148 = load i32, i32* %146, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %169, %144
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %7, align 8
  %155 = load i32, i32* %153, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %165, %152
  %157 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %7, align 8
  %161 = load i32, i32* %159, align 4
  %162 = call i32 @dib8000_write_word(%struct.dib8000_state* %157, i32 %158, i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %156, label %169

169:                                              ; preds = %165
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %7, align 8
  %172 = load i32, i32* %170, align 4
  store i32 %172, i32* %5, align 4
  br label %149

173:                                              ; preds = %149
  %174 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %175 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %177 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 8090
  br i1 %179, label %180, label %193

180:                                              ; preds = %173
  %181 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %182 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %188 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %189 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @dib8000_write_word(%struct.dib8000_state* %187, i32 903, i32 %191)
  br label %193

193:                                              ; preds = %186, %180, %173
  %194 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %195 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %196 = call i32 @dib8000_read_word(%struct.dib8000_state* %195, i32 1285)
  %197 = and i32 %196, -3
  %198 = call i32 @dib8000_write_word(%struct.dib8000_state* %194, i32 1285, i32 %197)
  %199 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %200 = call i32 @dib8000_set_bandwidth(%struct.dvb_frontend* %199, i32 6000)
  %201 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %202 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %203 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %201, i32 %202)
  %204 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %205 = call i32 @dib8000_sad_calib(%struct.dib8000_state* %204)
  %206 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %207 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 32912
  br i1 %209, label %210, label %214

210:                                              ; preds = %193
  %211 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %212 = load i32, i32* @DIBX000_SLOW_ADC_OFF, align 4
  %213 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %193
  %215 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %216 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %217 = call i32 @dib8000_read_word(%struct.dib8000_state* %216, i32 285)
  %218 = and i32 %217, -97
  %219 = or i32 %218, 96
  %220 = call i32 @dib8000_write_word(%struct.dib8000_state* %215, i32 285, i32 %219)
  %221 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %222 = load i32, i32* @DIB8000_POWER_INTERFACE_ONLY, align 4
  %223 = call i32 @dib8000_set_power_mode(%struct.dib8000_state* %221, i32 %222)
  %224 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %225 = call i32 @dib8000_reset_stats(%struct.dvb_frontend* %224)
  store i32 0, i32* %2, align 4
  br label %226

226:                                              ; preds = %214, %17
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @dib8000_identify(i32*) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dibx000_reset_i2c_master(i32*) #1

declare dso_local i32 @dib8000_set_power_mode(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_adc_state(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_reset_pll(%struct.dib8000_state*) #1

declare dso_local i64 @dib8000_reset_gpio(%struct.dib8000_state*) #1

declare dso_local i64 @dib8000_set_output_mode(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_bandwidth(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib8000_sad_calib(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_reset_stats(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
