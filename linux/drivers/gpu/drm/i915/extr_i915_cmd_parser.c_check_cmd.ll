; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_check_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_check_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.drm_i915_cmd_descriptor = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.drm_i915_reg_descriptor = type { i32, i64 }

@CMD_DESC_SKIP = common dso_local global i32 0, align 4
@CMD_DESC_REJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CMD: Rejected command: 0x%08X\0A\00", align 1
@CMD_DESC_REGISTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"CMD: Rejected register 0x%08X in command: 0x%08X (%s)\0A\00", align 1
@MI_LOAD_REGISTER_MEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"CMD: Rejected LRM to masked register 0x%08X\0A\00", align 1
@MI_LOAD_REGISTER_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"CMD: Rejected LRR to masked register 0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"CMD: Rejected LRI to masked register 0x%08X\0A\00", align 1
@CMD_DESC_BITMASK = common dso_local global i32 0, align 4
@MAX_CMD_DESC_BITMASKS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"CMD: Rejected command 0x%08X, too short to check bitmask (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"CMD: Rejected command 0x%08X for bitmask 0x%08X (exp=0x%08X act=0x%08X) (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, %struct.drm_i915_cmd_descriptor*, i64*, i64)* @check_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cmd(%struct.intel_engine_cs* %0, %struct.drm_i915_cmd_descriptor* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca %struct.drm_i915_cmd_descriptor*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.drm_i915_reg_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %6, align 8
  store %struct.drm_i915_cmd_descriptor* %1, %struct.drm_i915_cmd_descriptor** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %19 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CMD_DESC_SKIP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %289

25:                                               ; preds = %4
  %26 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %27 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CMD_DESC_REJECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i8*, i64, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %34)
  store i32 0, i32* %5, align 4
  br label %289

36:                                               ; preds = %25
  %37 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %38 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CMD_DESC_REGISTER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %151

43:                                               ; preds = %36
  %44 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %45 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %51 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  br label %56

54:                                               ; preds = %43
  %55 = load i64, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi i64 [ %53, %49 ], [ %55, %54 ]
  store i64 %57, i64* %10, align 8
  %58 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %59 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %11, align 8
  br label %62

62:                                               ; preds = %146, %56
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %150

66:                                               ; preds = %62
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %72 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = and i64 %70, %74
  store i64 %75, i64* %12, align 8
  %76 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call %struct.drm_i915_reg_descriptor* @find_reg(%struct.intel_engine_cs* %76, i64 %77)
  store %struct.drm_i915_reg_descriptor* %78, %struct.drm_i915_reg_descriptor** %13, align 8
  %79 = load %struct.drm_i915_reg_descriptor*, %struct.drm_i915_reg_descriptor** %13, align 8
  %80 = icmp ne %struct.drm_i915_reg_descriptor* %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %66
  %82 = load i64, i64* %12, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %86 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i64, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %84, i32 %87)
  store i32 0, i32* %5, align 4
  br label %289

89:                                               ; preds = %66
  %90 = load %struct.drm_i915_reg_descriptor*, %struct.drm_i915_reg_descriptor** %13, align 8
  %91 = getelementptr inbounds %struct.drm_i915_reg_descriptor, %struct.drm_i915_reg_descriptor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %89
  %95 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %96 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MI_LOAD_REGISTER_MEM, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i64, i64* %12, align 8
  %103 = call i32 (i8*, i64, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  store i32 0, i32* %5, align 4
  br label %289

104:                                              ; preds = %94
  %105 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %106 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MI_LOAD_REGISTER_REG, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i64, i64* %12, align 8
  %113 = call i32 (i8*, i64, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %112)
  store i32 0, i32* %5, align 4
  br label %289

114:                                              ; preds = %104
  %115 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %116 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @MI_LOAD_REGISTER_IMM(i32 1)
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %114
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 2
  %124 = load i64, i64* %9, align 8
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %141, label %126

126:                                              ; preds = %121
  %127 = load i64*, i64** %8, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, 1
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.drm_i915_reg_descriptor*, %struct.drm_i915_reg_descriptor** %13, align 8
  %133 = getelementptr inbounds %struct.drm_i915_reg_descriptor, %struct.drm_i915_reg_descriptor* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = and i64 %131, %135
  %137 = load %struct.drm_i915_reg_descriptor*, %struct.drm_i915_reg_descriptor** %13, align 8
  %138 = getelementptr inbounds %struct.drm_i915_reg_descriptor, %struct.drm_i915_reg_descriptor* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %126, %121
  %142 = load i64, i64* %12, align 8
  %143 = call i32 (i8*, i64, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %142)
  store i32 0, i32* %5, align 4
  br label %289

144:                                              ; preds = %126, %114
  br label %145

145:                                              ; preds = %144, %89
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %11, align 8
  br label %62

150:                                              ; preds = %62
  br label %151

151:                                              ; preds = %150, %36
  %152 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %153 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @CMD_DESC_BITMASK, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %288

158:                                              ; preds = %151
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %284, %158
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @MAX_CMD_DESC_BITMASKS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %287

163:                                              ; preds = %159
  %164 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %165 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %287

174:                                              ; preds = %163
  %175 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %176 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %210

184:                                              ; preds = %174
  %185 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %186 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %185, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %16, align 8
  %193 = load i64*, i64** %8, align 8
  %194 = load i64, i64* %16, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %198 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = and i64 %196, %204
  store i64 %205, i64* %17, align 8
  %206 = load i64, i64* %17, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %184
  br label %284

209:                                              ; preds = %184
  br label %210

210:                                              ; preds = %209, %174
  %211 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %212 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %211, i32 0, i32 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %9, align 8
  %220 = icmp uge i64 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %210
  %222 = load i64*, i64** %8, align 8
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %225 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, i64, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i64 %223, i32 %226)
  store i32 0, i32* %5, align 4
  br label %289

228:                                              ; preds = %210
  %229 = load i64*, i64** %8, align 8
  %230 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %231 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %230, i32 0, i32 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i64, i64* %229, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %241 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %240, i32 0, i32 1
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = and i64 %239, %247
  store i64 %248, i64* %15, align 8
  %249 = load i64, i64* %15, align 8
  %250 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %251 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %250, i32 0, i32 1
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %249, %257
  br i1 %258, label %259, label %283

259:                                              ; preds = %228
  %260 = load i64*, i64** %8, align 8
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %263 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %262, i32 0, i32 1
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %7, align 8
  %271 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %270, i32 0, i32 1
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %15, align 8
  %279 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %280 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i8*, i64, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i64 %261, i64 %269, i64 %277, i64 %278, i32 %281)
  store i32 0, i32* %5, align 4
  br label %289

283:                                              ; preds = %228
  br label %284

284:                                              ; preds = %283, %208
  %285 = load i32, i32* %14, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %14, align 4
  br label %159

287:                                              ; preds = %173, %159
  br label %288

288:                                              ; preds = %287, %151
  store i32 1, i32* %5, align 4
  br label %289

289:                                              ; preds = %288, %259, %221, %141, %111, %101, %81, %32, %24
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, ...) #1

declare dso_local %struct.drm_i915_reg_descriptor* @find_reg(%struct.intel_engine_cs*, i64) #1

declare dso_local i64 @MI_LOAD_REGISTER_IMM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
