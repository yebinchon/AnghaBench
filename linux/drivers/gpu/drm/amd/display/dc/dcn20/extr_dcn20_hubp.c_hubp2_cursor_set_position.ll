; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_cursor_set_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_cursor_set_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.hubp*, %struct.TYPE_9__*)* }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i64 }
%struct.dc_cursor_mi_param = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_10__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.dcn20_hubp = type { i32 }

@ROTATION_ANGLE_90 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_270 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_180 = common dso_local global i64 0, align 8
@CURSOR_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4
@CURSOR_POSITION = common dso_local global i32 0, align 4
@CURSOR_X_POSITION = common dso_local global i32 0, align 4
@CURSOR_Y_POSITION = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT_X = common dso_local global i32 0, align 4
@CURSOR_HOT_SPOT_Y = common dso_local global i32 0, align 4
@CURSOR_DST_OFFSET = common dso_local global i32 0, align 4
@CURSOR_DST_X_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp2_cursor_set_position(%struct.hubp* %0, %struct.dc_cursor_position* %1, %struct.dc_cursor_mi_param* %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct.dc_cursor_position*, align 8
  %6 = alloca %struct.dc_cursor_mi_param*, align 8
  %7 = alloca %struct.dcn20_hubp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %struct.dc_cursor_position* %1, %struct.dc_cursor_position** %5, align 8
  store %struct.dc_cursor_mi_param* %2, %struct.dc_cursor_mi_param** %6, align 8
  %16 = load %struct.hubp*, %struct.hubp** %4, align 8
  %17 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %16)
  store %struct.dcn20_hubp* %17, %struct.dcn20_hubp** %7, align 8
  %18 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %19 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %22 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %26 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %24, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %31 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %34 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %38 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %43 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %46 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load %struct.hubp*, %struct.hubp** %4, align 8
  %49 = getelementptr inbounds %struct.hubp, %struct.hubp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load %struct.hubp*, %struct.hubp** %4, align 8
  %54 = getelementptr inbounds %struct.hubp, %struct.hubp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %59 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  store i32 %63, i32* %15, align 4
  %64 = load %struct.hubp*, %struct.hubp** %4, align 8
  %65 = getelementptr inbounds %struct.hubp, %struct.hubp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %3
  br label %273

71:                                               ; preds = %3
  %72 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %73 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ROTATION_ANGLE_90, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %79 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ROTATION_ANGLE_270, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @swap(i32 %84, i32 %85)
  %87 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %88 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ROTATION_ANGLE_90, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %83
  %93 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %94 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %97 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %101 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %99, %103
  store i32 %104, i32* %8, align 4
  %105 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %106 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %109 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %107, %110
  %112 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %113 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %111, %115
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %92, %83
  br label %142

118:                                              ; preds = %77
  %119 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %120 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ROTATION_ANGLE_180, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %118
  %125 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %126 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %129 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %127, %131
  store i32 %132, i32* %8, align 4
  %133 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %134 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %137 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %135, %139
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %124, %118
  br label %142

142:                                              ; preds = %141, %117
  %143 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %144 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %142
  %148 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %149 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %10, align 4
  %154 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %155 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %159 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %157, %161
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %147, %142
  %166 = load i32, i32* %8, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* %8, align 4
  br label %171

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170, %168
  %172 = phi i32 [ %169, %168 ], [ 0, %170 ]
  store i32 %172, i32* %14, align 4
  %173 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %174 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = mul nsw i32 %176, %175
  store i32 %177, i32* %14, align 4
  %178 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %179 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %14, align 4
  %182 = sdiv i32 %181, %180
  store i32 %182, i32* %14, align 4
  %183 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %184 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @ASSERT(i64 %186)
  %188 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %189 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %171
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @dc_fixpt_from_int(i32 %194)
  %196 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %197 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @dc_fixpt_div(i32 %195, i64 %199)
  %201 = call i32 @dc_fixpt_floor(i32 %200)
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %193, %171
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %205 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp sge i32 %203, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  store i32 0, i32* %15, align 4
  br label %210

210:                                              ; preds = %209, %202
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %211, %212
  %214 = icmp sle i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 0, i32* %15, align 4
  br label %216

216:                                              ; preds = %215, %210
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %6, align 8
  %219 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = icmp sge i32 %217, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  store i32 0, i32* %15, align 4
  br label %225

225:                                              ; preds = %224, %216
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %226, %227
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32 0, i32* %15, align 4
  br label %231

231:                                              ; preds = %230, %225
  %232 = load i32, i32* %15, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = load i32, i32* @CURSOR_SURFACE_ADDRESS, align 4
  %236 = call i64 @REG_READ(i32 %235)
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = load %struct.hubp*, %struct.hubp** %4, align 8
  %240 = getelementptr inbounds %struct.hubp, %struct.hubp* %239, i32 0, i32 1
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32 (%struct.hubp*, %struct.TYPE_9__*)*, i32 (%struct.hubp*, %struct.TYPE_9__*)** %242, align 8
  %244 = load %struct.hubp*, %struct.hubp** %4, align 8
  %245 = load %struct.hubp*, %struct.hubp** %4, align 8
  %246 = getelementptr inbounds %struct.hubp, %struct.hubp* %245, i32 0, i32 0
  %247 = call i32 %243(%struct.hubp* %244, %struct.TYPE_9__* %246)
  br label %248

248:                                              ; preds = %238, %234, %231
  %249 = load i32, i32* @CURSOR_CONTROL, align 4
  %250 = load i32, i32* @CURSOR_ENABLE, align 4
  %251 = load i32, i32* %15, align 4
  %252 = call i32 @REG_UPDATE(i32 %249, i32 %250, i32 %251)
  %253 = load i32, i32* @CURSOR_POSITION, align 4
  %254 = load i32, i32* @CURSOR_X_POSITION, align 4
  %255 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %256 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @CURSOR_Y_POSITION, align 4
  %259 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %5, align 8
  %260 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @REG_SET_2(i32 %253, i32 0, i32 %254, i32 %257, i32 %258, i32 %261)
  %263 = load i32, i32* @CURSOR_HOT_SPOT, align 4
  %264 = load i32, i32* @CURSOR_HOT_SPOT_X, align 4
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @CURSOR_HOT_SPOT_Y, align 4
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @REG_SET_2(i32 %263, i32 0, i32 %264, i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* @CURSOR_DST_OFFSET, align 4
  %270 = load i32, i32* @CURSOR_DST_X_OFFSET, align 4
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @REG_SET(i32 %269, i32 0, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %248, %70
  ret void
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32 @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_div(i32, i64) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

declare dso_local i64 @REG_READ(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
