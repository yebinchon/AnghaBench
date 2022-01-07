; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_initialize_training_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_initialize_training_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dc_link_settings = type { i64, i64, i32, i32 }
%struct.dc_link_training_overrides = type { i32*, i32*, i8**, i8**, i32*, i32*, i32*, i64* }
%struct.link_training_settings = type { i32, i32, i8*, i8*, i32*, %struct.TYPE_6__*, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i8*, i32, i32 }

@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@LANE_COUNT_UNKNOWN = common dso_local global i64 0, align 8
@LINK_SPREAD_DISABLED = common dso_local global i8* null, align 8
@LINK_SPREAD_05_DOWNSPREAD_30KHZ = common dso_local global i8* null, align 8
@LANE_COUNT_DP_MAX = common dso_local global i64 0, align 8
@VOLTAGE_SWING_LEVEL0 = common dso_local global i32 0, align 4
@PRE_EMPHASIS_DISABLED = common dso_local global i32 0, align 4
@POST_CURSOR2_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_link*, %struct.dc_link_settings*, %struct.dc_link_training_overrides*, %struct.link_training_settings*)* @initialize_training_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_training_settings(%struct.dc_link* %0, %struct.dc_link_settings* %1, %struct.dc_link_training_overrides* %2, %struct.link_training_settings* %3) #0 {
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca %struct.dc_link_settings*, align 8
  %7 = alloca %struct.dc_link_training_overrides*, align 8
  %8 = alloca %struct.link_training_settings*, align 8
  %9 = alloca i64, align 8
  store %struct.dc_link* %0, %struct.dc_link** %5, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %6, align 8
  store %struct.dc_link_training_overrides* %2, %struct.dc_link_training_overrides** %7, align 8
  store %struct.link_training_settings* %3, %struct.link_training_settings** %8, align 8
  %10 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %11 = call i32 @memset(%struct.link_training_settings* %10, i8 signext 0, i32 88)
  %12 = load %struct.dc_link_settings*, %struct.dc_link_settings** %6, align 8
  %13 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %16 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i32 %14, i32* %17, align 4
  %18 = load %struct.dc_link_settings*, %struct.dc_link_settings** %6, align 8
  %19 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %22 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 8
  %24 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %25 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %32 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %36 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %45

38:                                               ; preds = %4
  %39 = load %struct.dc_link_settings*, %struct.dc_link_settings** %6, align 8
  %40 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %43 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %30
  %46 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %47 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LANE_COUNT_UNKNOWN, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %54 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %58 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  br label %67

60:                                               ; preds = %45
  %61 = load %struct.dc_link_settings*, %struct.dc_link_settings** %6, align 8
  %62 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %65 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %52
  %68 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %69 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** @LINK_SPREAD_DISABLED, align 8
  %74 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %75 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  br label %103

77:                                               ; preds = %67
  %78 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %79 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %78, i32 0, i32 7
  %80 = load i64*, i64** %79, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %84 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %83, i32 0, i32 7
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i8*, i8** @LINK_SPREAD_05_DOWNSPREAD_30KHZ, align 8
  br label %92

90:                                               ; preds = %82
  %91 = load i8*, i8** @LINK_SPREAD_DISABLED, align 8
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i8* [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %95 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  br label %102

97:                                               ; preds = %77
  %98 = load i8*, i8** @LINK_SPREAD_05_DOWNSPREAD_30KHZ, align 8
  %99 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %100 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store i8* %98, i8** %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %105 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %110 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %113 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %112, i32 0, i32 7
  store i32* %111, i32** %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %116 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %121 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %124 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %123, i32 0, i32 6
  store i32* %122, i32** %124, align 8
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %127 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %132 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %135 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  br label %136

136:                                              ; preds = %130, %125
  store i64 0, i64* %9, align 8
  br label %137

137:                                              ; preds = %199, %136
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* @LANE_COUNT_DP_MAX, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %202

141:                                              ; preds = %137
  %142 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %143 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %148 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %149, align 4
  br label %153

151:                                              ; preds = %141
  %152 = load i32, i32* @VOLTAGE_SWING_LEVEL0, align 4
  br label %153

153:                                              ; preds = %151, %146
  %154 = phi i32 [ %150, %146 ], [ %152, %151 ]
  %155 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %156 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %155, i32 0, i32 5
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i64, i64* %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i32 %154, i32* %160, align 4
  %161 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %162 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %153
  %166 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %167 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %168, align 4
  br label %172

170:                                              ; preds = %153
  %171 = load i32, i32* @PRE_EMPHASIS_DISABLED, align 4
  br label %172

172:                                              ; preds = %170, %165
  %173 = phi i32 [ %169, %165 ], [ %171, %170 ]
  %174 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %175 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %174, i32 0, i32 5
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i32 %173, i32* %179, align 4
  %180 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %181 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %172
  %185 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %186 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %187, align 4
  br label %191

189:                                              ; preds = %172
  %190 = load i32, i32* @POST_CURSOR2_DISABLED, align 4
  br label %191

191:                                              ; preds = %189, %184
  %192 = phi i32 [ %188, %184 ], [ %190, %189 ]
  %193 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %194 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %193, i32 0, i32 5
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = load i64, i64* %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  store i32 %192, i32* %198, align 4
  br label %199

199:                                              ; preds = %191
  %200 = load i64, i64* %9, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %9, align 8
  br label %137

202:                                              ; preds = %137
  %203 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %204 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %203, i32 0, i32 3
  %205 = load i8**, i8*** %204, align 8
  %206 = icmp ne i8** %205, null
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %209 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %208, i32 0, i32 3
  %210 = load i8**, i8*** %209, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %213 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  br label %219

214:                                              ; preds = %202
  %215 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %216 = call i8* @get_training_aux_rd_interval(%struct.dc_link* %215, i32 100)
  %217 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %218 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %214, %207
  %220 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %221 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %220, i32 0, i32 2
  %222 = load i8**, i8*** %221, align 8
  %223 = icmp ne i8** %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %226 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %225, i32 0, i32 2
  %227 = load i8**, i8*** %226, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %230 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %229, i32 0, i32 2
  store i8* %228, i8** %230, align 8
  br label %236

231:                                              ; preds = %219
  %232 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %233 = call i8* @get_training_aux_rd_interval(%struct.dc_link* %232, i32 400)
  %234 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %235 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %231, %224
  %237 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %238 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %243 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %247 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  br label %253

248:                                              ; preds = %236
  %249 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %250 = call i32 @get_supported_tp(%struct.dc_link* %249)
  %251 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %252 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  br label %253

253:                                              ; preds = %248, %241
  %254 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %255 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load %struct.dc_link_training_overrides*, %struct.dc_link_training_overrides** %7, align 8
  %260 = getelementptr inbounds %struct.dc_link_training_overrides, %struct.dc_link_training_overrides* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %264 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  br label %268

265:                                              ; preds = %253
  %266 = load %struct.link_training_settings*, %struct.link_training_settings** %8, align 8
  %267 = getelementptr inbounds %struct.link_training_settings, %struct.link_training_settings* %266, i32 0, i32 0
  store i32 1, i32* %267, align 8
  br label %268

268:                                              ; preds = %265, %258
  ret void
}

declare dso_local i32 @memset(%struct.link_training_settings*, i8 signext, i32) #1

declare dso_local i8* @get_training_aux_rd_interval(%struct.dc_link*, i32) #1

declare dso_local i32 @get_supported_tp(%struct.dc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
