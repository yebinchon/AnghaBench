; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_agc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.dib7000p_state*, %struct.dtv_frontend_properties }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dib7000p_state = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 (i32*, i32)* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32 }

@DIB7000P_POWER_ALL = common dso_local global i32 0, align 4
@SOC7090 = common dso_local global i32 0, align 4
@DIBX000_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SPLIT %p: %hd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7000p_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_agc_startup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 2
  store %struct.dtv_frontend_properties* %14, %struct.dtv_frontend_properties** %4, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.dib7000p_state*, %struct.dib7000p_state** %16, align 8
  store %struct.dib7000p_state* %17, %struct.dib7000p_state** %5, align 8
  store i32 -1, i32* %6, align 4
  %18 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %19 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %18, i32 0, i32 0
  store i32* %19, i32** %7, align 8
  store i32 4096, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %21 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %240 [
    i32 0, label %23
    i32 1, label %104
    i32 2, label %152
    i32 3, label %173
    i32 4, label %212
    i32 5, label %222
  ]

23:                                               ; preds = %1
  %24 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %25 = load i32, i32* @DIB7000P_POWER_ALL, align 4
  %26 = call i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %24, i32 %25)
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %28 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SOC7090, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %23
  %33 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %34 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %33, i32 1947)
  %35 = and i32 %34, 65280
  store i32 %35, i32* %9, align 4
  %36 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 65535
  %39 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %36, i32 1946, i32 %38)
  %40 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 16384
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = or i32 %42, %45
  %47 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %40, i32 1947, i32 %46)
  %48 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %49 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %48, i32 1920)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, 3
  %53 = and i32 %52, -129
  %54 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %50, i32 1920, i32 %53)
  br label %61

55:                                               ; preds = %23
  %56 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %57 = load i32, i32* @DIBX000_ADC_ON, align 4
  %58 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %56, i32 %57)
  %59 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %60 = call i32 @dib7000p_pll_clk_cfg(%struct.dib7000p_state* %59)
  br label %61

61:                                               ; preds = %55, %32
  %62 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 1000
  %67 = call i32 @BAND_OF_FREQUENCY(i32 %66)
  %68 = call i32 @dib7000p_set_agc_config(%struct.dib7000p_state* %62, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %243

71:                                               ; preds = %61
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %75, align 8
  %77 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %76, null
  br i1 %77, label %78, label %94

78:                                               ; preds = %71
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %82, align 8
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %85 = bitcast %struct.dvb_frontend* %84 to %struct.dvb_frontend.0*
  %86 = call i32 %83(%struct.dvb_frontend.0* %85, i32* %12)
  %87 = load i32, i32* %12, align 4
  %88 = sdiv i32 %87, 1000
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 1000
  %93 = sub nsw i32 %88, %92
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %78, %71
  %95 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @dib7000p_set_dds(%struct.dib7000p_state* %95, i32 %96)
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 -1, i32* %2, align 4
  br label %243

100:                                              ; preds = %94
  store i32 7, i32* %6, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %241

104:                                              ; preds = %1
  %105 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %106 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32 (i32*, i32)*, i32 (i32*, i32)** %107, align 8
  %109 = icmp ne i32 (i32*, i32)* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %112 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32 (i32*, i32)*, i32 (i32*, i32)** %113, align 8
  %115 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %116 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %115, i32 0, i32 1
  %117 = call i32 %114(i32* %116, i32 1)
  br label %118

118:                                              ; preds = %110, %104
  %119 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %120 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %119, i32 78, i32 32768)
  %121 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %122 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %121, i32 0, i32 3
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %147, label %127

127:                                              ; preds = %118
  %128 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %129 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %130 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %129, i32 0, i32 3
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 13
  %135 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %136 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %135, i32 0, i32 3
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 9
  %141 = or i32 %134, %140
  %142 = or i32 %141, 256
  %143 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %128, i32 106, i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  store i32 5, i32* %6, align 4
  br label %149

147:                                              ; preds = %118
  %148 = load i32*, i32** %7, align 8
  store i32 4, i32* %148, align 4
  store i32 7, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %127
  %150 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %151 = call i32 @dib7000p_restart_agc(%struct.dib7000p_state* %150)
  br label %241

152:                                              ; preds = %1
  %153 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %154 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %155 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %154, i32 0, i32 3
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, 16
  %160 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %153, i32 75, i32 %159)
  %161 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %162 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %163 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %162, i32 0, i32 3
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 13
  %168 = or i32 %167, 1024
  %169 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %161, i32 106, i32 %168)
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  store i32 14, i32* %6, align 4
  br label %241

173:                                              ; preds = %1
  %174 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %175 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %174, i32 396)
  store i32 %175, i32* %8, align 4
  %176 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %177 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %178 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %177, i32 394)
  %179 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %176, i32 78, i32 %178)
  %180 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %181 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %182 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %181, i32 0, i32 3
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %180, i32 75, i32 %185)
  %187 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %188 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %189 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %188, i32 0, i32 3
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 %192, 13
  %194 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %195 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %194, i32 0, i32 3
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 9
  %200 = or i32 %193, %199
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %187, i32 106, i32 %202)
  %204 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %205 = call i32 @dib7000p_restart_agc(%struct.dib7000p_state* %204)
  %206 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dvb_frontend* %206, i32 %207)
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  store i32 5, i32* %6, align 4
  br label %241

212:                                              ; preds = %1
  store i32 7, i32* %6, align 4
  %213 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %214 = call i32 @dib7000p_update_lna(%struct.dib7000p_state* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 5, i32* %6, align 4
  br label %221

217:                                              ; preds = %212
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %217, %216
  br label %241

222:                                              ; preds = %1
  %223 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %224 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32 (i32*, i32)*, i32 (i32*, i32)** %225, align 8
  %227 = icmp ne i32 (i32*, i32)* %226, null
  br i1 %227, label %228, label %236

228:                                              ; preds = %222
  %229 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %230 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32 (i32*, i32)*, i32 (i32*, i32)** %231, align 8
  %233 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %234 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %233, i32 0, i32 1
  %235 = call i32 %232(i32* %234, i32 0)
  br label %236

236:                                              ; preds = %228, %222
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %241

240:                                              ; preds = %1
  br label %241

241:                                              ; preds = %240, %236, %221, %173, %152, %149, %100
  %242 = load i32, i32* %6, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %241, %99, %70
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @dib7000p_set_power_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_set_adc_state(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_pll_clk_cfg(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_set_agc_config(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dib7000p_set_dds(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_restart_agc(%struct.dib7000p_state*) #1

declare dso_local i32 @dprintk(i8*, %struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib7000p_update_lna(%struct.dib7000p_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
