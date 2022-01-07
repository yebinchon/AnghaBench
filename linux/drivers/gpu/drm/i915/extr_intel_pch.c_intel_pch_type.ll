; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_pch_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_pch_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Found Ibex Peak PCH\0A\00", align 1
@PCH_IBX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Found CougarPoint PCH\0A\00", align 1
@PCH_CPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Found PantherPoint PCH\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Found LynxPoint PCH\0A\00", align 1
@PCH_LPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Found LynxPoint LP PCH\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Found WildcatPoint PCH\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Found WildcatPoint LP PCH\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Found SunrisePoint PCH\0A\00", align 1
@PCH_SPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Found SunrisePoint LP PCH\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Found Kaby Lake PCH (KBP)\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Found Cannon Lake PCH (CNP)\0A\00", align 1
@PCH_CNP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"Found Cannon Lake LP PCH (CNP-LP)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Found Comet Lake PCH (CMP)\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Found Ice Lake PCH\0A\00", align 1
@PCH_ICP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Found Mule Creek Canyon PCH\0A\00", align 1
@PCH_MCC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"Found Tiger Lake LP PCH\0A\00", align 1
@PCH_TGP = common dso_local global i32 0, align 4
@PCH_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i16)* @intel_pch_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pch_type(%struct.drm_i915_private* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i16, align 2
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  switch i32 %7, label %268 [
    i32 140, label %8
    i32 141, label %17
    i32 133, label %32
    i32 137, label %47
    i32 136, label %73
    i32 129, label %100
    i32 128, label %126
    i32 132, label %153
    i32 131, label %168
    i32 138, label %183
    i32 143, label %202
    i32 142, label %217
    i32 144, label %232
    i32 145, label %232
    i32 139, label %241
    i32 134, label %250
    i32 135, label %250
    i32 130, label %259
  ]

8:                                                ; preds = %2
  %9 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = call i32 @IS_GEN(%struct.drm_i915_private* %10, i32 5)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load i32, i32* @PCH_IBX, align 4
  store i32 %16, i32* %3, align 4
  br label %270

17:                                               ; preds = %2
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = call i32 @IS_GEN(%struct.drm_i915_private* %19, i32 6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = call i32 @IS_IVYBRIDGE(%struct.drm_i915_private* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* @PCH_CPT, align 4
  store i32 %31, i32* %3, align 4
  br label %270

32:                                               ; preds = %2
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = call i32 @IS_GEN(%struct.drm_i915_private* %34, i32 6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = call i32 @IS_IVYBRIDGE(%struct.drm_i915_private* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load i32, i32* @PCH_CPT, align 4
  store i32 %46, i32* %3, align 4
  br label %270

47:                                               ; preds = %2
  %48 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = call i32 @IS_HASWELL(%struct.drm_i915_private* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %54 = call i32 @IS_BROADWELL(%struct.drm_i915_private* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %62 = call i32 @IS_HSW_ULT(%struct.drm_i915_private* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %66 = call i32 @IS_BDW_ULT(%struct.drm_i915_private* %65)
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %64, %57
  %69 = phi i1 [ true, %57 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  %72 = load i32, i32* @PCH_LPT, align 4
  store i32 %72, i32* %3, align 4
  br label %270

73:                                               ; preds = %2
  %74 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %76 = call i32 @IS_HASWELL(%struct.drm_i915_private* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %80 = call i32 @IS_BROADWELL(%struct.drm_i915_private* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ false, %73 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %88 = call i32 @IS_HSW_ULT(%struct.drm_i915_private* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %92 = call i32 @IS_BDW_ULT(%struct.drm_i915_private* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %90, %83
  %96 = phi i1 [ false, %83 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON(i32 %97)
  %99 = load i32, i32* @PCH_LPT, align 4
  store i32 %99, i32* %3, align 4
  br label %270

100:                                              ; preds = %2
  %101 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %103 = call i32 @IS_HASWELL(%struct.drm_i915_private* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %107 = call i32 @IS_BROADWELL(%struct.drm_i915_private* %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ false, %100 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @WARN_ON(i32 %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %115 = call i32 @IS_HSW_ULT(%struct.drm_i915_private* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %110
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %119 = call i32 @IS_BDW_ULT(%struct.drm_i915_private* %118)
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %117, %110
  %122 = phi i1 [ true, %110 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @WARN_ON(i32 %123)
  %125 = load i32, i32* @PCH_LPT, align 4
  store i32 %125, i32* %3, align 4
  br label %270

126:                                              ; preds = %2
  %127 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %129 = call i32 @IS_HASWELL(%struct.drm_i915_private* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %133 = call i32 @IS_BROADWELL(%struct.drm_i915_private* %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @WARN_ON(i32 %138)
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %141 = call i32 @IS_HSW_ULT(%struct.drm_i915_private* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %136
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %145 = call i32 @IS_BDW_ULT(%struct.drm_i915_private* %144)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br label %148

148:                                              ; preds = %143, %136
  %149 = phi i1 [ false, %136 ], [ %147, %143 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @WARN_ON(i32 %150)
  %152 = load i32, i32* @PCH_LPT, align 4
  store i32 %152, i32* %3, align 4
  br label %270

153:                                              ; preds = %2
  %154 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %156 = call i32 @IS_SKYLAKE(%struct.drm_i915_private* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %160 = call i32 @IS_KABYLAKE(%struct.drm_i915_private* %159)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i1 [ false, %153 ], [ %162, %158 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @WARN_ON(i32 %165)
  %167 = load i32, i32* @PCH_SPT, align 4
  store i32 %167, i32* %3, align 4
  br label %270

168:                                              ; preds = %2
  %169 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %170 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %171 = call i32 @IS_SKYLAKE(%struct.drm_i915_private* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %175 = call i32 @IS_KABYLAKE(%struct.drm_i915_private* %174)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %173, %168
  %179 = phi i1 [ false, %168 ], [ %177, %173 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @WARN_ON(i32 %180)
  %182 = load i32, i32* @PCH_SPT, align 4
  store i32 %182, i32* %3, align 4
  br label %270

183:                                              ; preds = %2
  %184 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %186 = call i32 @IS_SKYLAKE(%struct.drm_i915_private* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %183
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %190 = call i32 @IS_KABYLAKE(%struct.drm_i915_private* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %188
  %193 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %194 = call i32 @IS_COFFEELAKE(%struct.drm_i915_private* %193)
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %192, %188, %183
  %198 = phi i1 [ false, %188 ], [ false, %183 ], [ %196, %192 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @WARN_ON(i32 %199)
  %201 = load i32, i32* @PCH_SPT, align 4
  store i32 %201, i32* %3, align 4
  br label %270

202:                                              ; preds = %2
  %203 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %204 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %205 = call i32 @IS_CANNONLAKE(%struct.drm_i915_private* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %209 = call i32 @IS_COFFEELAKE(%struct.drm_i915_private* %208)
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  br label %212

212:                                              ; preds = %207, %202
  %213 = phi i1 [ false, %202 ], [ %211, %207 ]
  %214 = zext i1 %213 to i32
  %215 = call i32 @WARN_ON(i32 %214)
  %216 = load i32, i32* @PCH_CNP, align 4
  store i32 %216, i32* %3, align 4
  br label %270

217:                                              ; preds = %2
  %218 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %219 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %220 = call i32 @IS_CANNONLAKE(%struct.drm_i915_private* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %224 = call i32 @IS_COFFEELAKE(%struct.drm_i915_private* %223)
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  br label %227

227:                                              ; preds = %222, %217
  %228 = phi i1 [ false, %217 ], [ %226, %222 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 @WARN_ON(i32 %229)
  %231 = load i32, i32* @PCH_CNP, align 4
  store i32 %231, i32* %3, align 4
  br label %270

232:                                              ; preds = %2, %2
  %233 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %234 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %235 = call i32 @IS_COFFEELAKE(%struct.drm_i915_private* %234)
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 @WARN_ON(i32 %238)
  %240 = load i32, i32* @PCH_CNP, align 4
  store i32 %240, i32* %3, align 4
  br label %270

241:                                              ; preds = %2
  %242 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %243 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %244 = call i32 @IS_ICELAKE(%struct.drm_i915_private* %243)
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i32 @WARN_ON(i32 %247)
  %249 = load i32, i32* @PCH_ICP, align 4
  store i32 %249, i32* %3, align 4
  br label %270

250:                                              ; preds = %2, %2
  %251 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %252 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %253 = call i32 @IS_ELKHARTLAKE(%struct.drm_i915_private* %252)
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = call i32 @WARN_ON(i32 %256)
  %258 = load i32, i32* @PCH_MCC, align 4
  store i32 %258, i32* %3, align 4
  br label %270

259:                                              ; preds = %2
  %260 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %261 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %262 = call i32 @IS_TIGERLAKE(%struct.drm_i915_private* %261)
  %263 = icmp ne i32 %262, 0
  %264 = xor i1 %263, true
  %265 = zext i1 %264 to i32
  %266 = call i32 @WARN_ON(i32 %265)
  %267 = load i32, i32* @PCH_TGP, align 4
  store i32 %267, i32* %3, align 4
  br label %270

268:                                              ; preds = %2
  %269 = load i32, i32* @PCH_NONE, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %268, %259, %250, %241, %232, %227, %212, %197, %178, %163, %148, %121, %95, %68, %42, %27, %8
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_HSW_ULT(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_BDW_ULT(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_ICELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_TIGERLAKE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
