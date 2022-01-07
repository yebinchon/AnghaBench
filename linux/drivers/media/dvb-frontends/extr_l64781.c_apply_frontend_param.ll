; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_l64781.c_apply_frontend_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_l64781.c_apply_frontend_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.l64781_state*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.l64781_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i64, i64, i32, i64, i64, i32, i64 }

@apply_frontend_param.fec_tab = internal constant [8 x i32] [i32 7, i32 0, i32 1, i32 2, i32 9, i32 3, i32 10, i32 4], align 16
@apply_frontend_param.qam_tab = internal constant [4 x i32] [i32 2, i32 4, i32 0, i32 6], align 16
@apply_frontend_param.guard_tab = internal constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@apply_frontend_param.ppm = internal constant i32 8000, align 4
@EINVAL = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i64 0, align 8
@INVERSION_OFF = common dso_local global i64 0, align 8
@FEC_1_2 = common dso_local global i64 0, align 8
@FEC_2_3 = common dso_local global i64 0, align 8
@FEC_3_4 = common dso_local global i64 0, align 8
@FEC_5_6 = common dso_local global i64 0, align 8
@FEC_7_8 = common dso_local global i64 0, align 8
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@QPSK = common dso_local global i64 0, align 8
@QAM_16 = common dso_local global i64 0, align 8
@QAM_64 = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i64 0, align 8
@HIERARCHY_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @apply_frontend_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_frontend_param(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.l64781_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %17 = load %struct.l64781_state*, %struct.l64781_state** %16, align 8
  store %struct.l64781_state* %17, %struct.l64781_state** %5, align 8
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %24 [
    i32 8000000, label %21
    i32 7000000, label %22
    i32 6000000, label %23
  ]

21:                                               ; preds = %1
  store i32 8, i32* %12, align 4
  br label %27

22:                                               ; preds = %1
  store i32 7, i32* %12, align 4
  br label %27

23:                                               ; preds = %1
  store i32 6, i32* %12, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %373

27:                                               ; preds = %23, %22, %21
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %31, align 8
  %33 = icmp ne i32 (%struct.dvb_frontend.1*)* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %38, align 8
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %41 = bitcast %struct.dvb_frontend* %40 to %struct.dvb_frontend.1*
  %42 = call i32 %39(%struct.dvb_frontend.1* %41)
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %51, align 8
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %54 = bitcast %struct.dvb_frontend* %53 to %struct.dvb_frontend.0*
  %55 = call i32 %52(%struct.dvb_frontend.0* %54, i32 0)
  br label %56

56:                                               ; preds = %48, %34
  br label %57

57:                                               ; preds = %56, %27
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @INVERSION_ON, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INVERSION_OFF, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %373

72:                                               ; preds = %63, %57
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FEC_1_2, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %72
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FEC_2_3, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @FEC_3_4, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @FEC_5_6, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @FEC_7_8, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %373

105:                                              ; preds = %96, %90, %84, %78, %72
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @HIERARCHY_NONE, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %144

111:                                              ; preds = %105
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FEC_1_2, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %111
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @FEC_2_3, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %117
  %124 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %125 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FEC_3_4, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @FEC_5_6, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %137 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @FEC_7_8, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %373

144:                                              ; preds = %135, %129, %123, %117, %111, %105
  %145 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %146 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @QPSK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @QAM_16, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @QAM_64, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %373

165:                                              ; preds = %156, %150, %144
  %166 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %167 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %173 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %373

180:                                              ; preds = %171, %165
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 7
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %180
  %188 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %189 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %188, i32 0, i32 7
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @GUARD_INTERVAL_1_4, align 8
  %192 = icmp ugt i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187, %180
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %373

196:                                              ; preds = %187
  %197 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %198 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @HIERARCHY_NONE, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %196
  %203 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %204 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @HIERARCHY_4, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %202, %196
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %373

211:                                              ; preds = %202
  %212 = load i32, i32* %12, align 4
  %213 = sdiv i32 524288000, %212
  %214 = sdiv i32 %213, 1000000
  %215 = sub nsw i32 16384, %214
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = udiv i64 270582937, %217
  %219 = and i64 %218, 16777215
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %7, align 4
  store i32 387072, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = mul nsw i32 %221, 16
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %8, align 4
  %225 = mul nsw i32 %224, %223
  store i32 %225, i32* %8, align 4
  %226 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %227 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* @apply_frontend_param.qam_tab, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %8, align 4
  %232 = mul nsw i32 %231, %230
  store i32 %232, i32* %8, align 4
  %233 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %234 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, 1
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = sdiv i64 %238, %236
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %8, align 4
  %241 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %242 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* @apply_frontend_param.guard_tab, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 32
  %247 = load i32, i32* %8, align 4
  %248 = sdiv i32 %247, %246
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = mul nsw i32 %249, 1000
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  %252 = sdiv i32 %251, 1008
  store i32 %252, i32* %8, align 4
  %253 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %254 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = mul nsw i64 %257, %255
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %8, align 4
  %260 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %261 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = shl i32 %262, 2
  %264 = sext i32 %263 to i64
  %265 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %266 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %265, i32 0, i32 7
  %267 = load i64, i64* %266, align 8
  %268 = or i64 %264, %267
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %9, align 4
  %270 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %271 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* @apply_frontend_param.fec_tab, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %10, align 4
  %275 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %276 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @HIERARCHY_NONE, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %211
  %281 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %282 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @FEC_1_2, align 8
  %285 = sub nsw i64 %283, %284
  %286 = shl i64 %285, 3
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = or i64 %288, %286
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %10, align 4
  br label %291

291:                                              ; preds = %280, %211
  %292 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %293 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = shl i32 %294, 2
  %296 = sext i32 %295 to i64
  %297 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %298 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %297, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = or i64 %296, %299
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %11, align 4
  %302 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %303 = load i32, i32* %9, align 4
  %304 = call i32 @l64781_writereg(%struct.l64781_state* %302, i32 4, i32 %303)
  %305 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @l64781_writereg(%struct.l64781_state* %305, i32 5, i32 %306)
  %308 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %309 = load i32, i32* %11, align 4
  %310 = call i32 @l64781_writereg(%struct.l64781_state* %308, i32 6, i32 %309)
  %311 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %312 = call i32 @reset_afc(%struct.l64781_state* %311)
  %313 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %314 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %315 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %318 = icmp eq i32 %316, %317
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i32 1, i32 3
  %321 = call i32 @l64781_writereg(%struct.l64781_state* %313, i32 21, i32 %320)
  %322 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %323 = load i32, i32* %7, align 4
  %324 = and i32 %323, 255
  %325 = call i32 @l64781_writereg(%struct.l64781_state* %322, i32 22, i32 %324)
  %326 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %327 = load i32, i32* %7, align 4
  %328 = ashr i32 %327, 8
  %329 = and i32 %328, 255
  %330 = call i32 @l64781_writereg(%struct.l64781_state* %326, i32 23, i32 %329)
  %331 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %332 = load i32, i32* %7, align 4
  %333 = ashr i32 %332, 16
  %334 = and i32 %333, 255
  %335 = call i32 @l64781_writereg(%struct.l64781_state* %331, i32 24, i32 %334)
  %336 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %337 = load i32, i32* %8, align 4
  %338 = and i32 %337, 255
  %339 = call i32 @l64781_writereg(%struct.l64781_state* %336, i32 27, i32 %338)
  %340 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %341 = load i32, i32* %8, align 4
  %342 = ashr i32 %341, 8
  %343 = and i32 %342, 255
  %344 = call i32 @l64781_writereg(%struct.l64781_state* %340, i32 28, i32 %343)
  %345 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %346 = load i32, i32* %8, align 4
  %347 = ashr i32 %346, 16
  %348 = and i32 %347, 127
  %349 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %350 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @INVERSION_ON, align 8
  %353 = icmp eq i64 %351, %352
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, i32 128, i32 0
  %356 = or i32 %348, %355
  %357 = call i32 @l64781_writereg(%struct.l64781_state* %345, i32 29, i32 %356)
  %358 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %359 = load i32, i32* %6, align 4
  %360 = and i32 %359, 255
  %361 = call i32 @l64781_writereg(%struct.l64781_state* %358, i32 34, i32 %360)
  %362 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %363 = load i32, i32* %6, align 4
  %364 = ashr i32 %363, 8
  %365 = and i32 %364, 63
  %366 = call i32 @l64781_writereg(%struct.l64781_state* %362, i32 35, i32 %365)
  %367 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %368 = call i32 @l64781_readreg(%struct.l64781_state* %367, i32 0)
  %369 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %370 = call i32 @l64781_readreg(%struct.l64781_state* %369, i32 1)
  %371 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %372 = call i32 @apply_tps(%struct.l64781_state* %371)
  store i32 0, i32* %2, align 4
  br label %373

373:                                              ; preds = %291, %208, %193, %177, %162, %141, %102, %69, %24
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local i32 @l64781_writereg(%struct.l64781_state*, i32, i32) #1

declare dso_local i32 @reset_afc(%struct.l64781_state*) #1

declare dso_local i32 @l64781_readreg(%struct.l64781_state*, i32) #1

declare dso_local i32 @apply_tps(%struct.l64781_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
