; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_gen9_sseu_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_gen9_sseu_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_device_info = type { i32 }
%struct.sseu_dev_info = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.sseu_dev_info }

@GEN8_FUSE2 = common dso_local global i32 0, align 4
@GEN8_F2_S_ENA_MASK = common dso_local global i32 0, align 4
@GEN8_F2_S_ENA_SHIFT = common dso_local global i32 0, align 4
@GEN9_F2_SS_DIS_MASK = common dso_local global i32 0, align 4
@GEN9_F2_SS_DIS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen9_sseu_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen9_sseu_info_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_device_info*, align 8
  %4 = alloca %struct.sseu_dev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = call %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private* %13)
  store %struct.intel_device_info* %14, %struct.intel_device_info** %3, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.sseu_dev_info* %17, %struct.sseu_dev_info** %4, align 8
  store i32 255, i32* %10, align 4
  %18 = load i32, i32* @GEN8_FUSE2, align 4
  %19 = call i32 @I915_READ(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GEN8_F2_S_ENA_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @GEN8_F2_S_ENA_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %26 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 3
  %32 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %33 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 3, i32 4
  %39 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %40 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %42 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %41, i32 0, i32 3
  store i32 8, i32* %42, align 4
  %43 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %44 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 1, %45
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @GEN9_F2_SS_DIS_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @GEN9_F2_SS_DIS_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %137, %1
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %59 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %140

62:                                               ; preds = %56
  %63 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %64 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %137

71:                                               ; preds = %62
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %74 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @GEN9_EU_DISABLE(i32 %79)
  %81 = call i32 @I915_READ(i32 %80)
  store i32 %81, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %133, %71
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %85 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %82
  %89 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %90 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @BIT(i32 %96)
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %88
  br label %133

101:                                              ; preds = %88
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %6, align 4
  %104 = mul nsw i32 %103, 8
  %105 = ashr i32 %102, %104
  %106 = and i32 %105, 255
  store i32 %106, i32* %12, align 4
  %107 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %12, align 4
  %111 = xor i32 %110, -1
  %112 = call i32 @sseu_set_eus(%struct.sseu_dev_info* %107, i32 %108, i32 %109, i32 %111)
  %113 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %114 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @hweight8(i32 %116)
  %118 = sub nsw i32 %115, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, 7
  br i1 %120, label %121, label %132

121:                                              ; preds = %101
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @BIT(i32 %122)
  %124 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %125 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %123
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %121, %101
  br label %133

133:                                              ; preds = %132, %100
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %82

136:                                              ; preds = %82
  br label %137

137:                                              ; preds = %136, %70
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %56

140:                                              ; preds = %56
  %141 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %142 = call i32 @compute_eu_total(%struct.sseu_dev_info* %141)
  %143 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %144 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %143, i32 0, i32 11
  store i32 %142, i32* %144, align 4
  %145 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %146 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %150 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %153 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %152)
  %154 = call i32 @DIV_ROUND_UP(i32 %151, i32 %153)
  br label %156

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155, %148
  %157 = phi i32 [ %154, %148 ], [ 0, %155 ]
  %158 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %159 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 8
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %161 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %156
  %164 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %165 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @hweight8(i32 %166)
  %168 = icmp sgt i32 %167, 1
  br label %169

169:                                              ; preds = %163, %156
  %170 = phi i1 [ false, %156 ], [ %168, %163 ]
  %171 = zext i1 %170 to i32
  %172 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %173 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 4
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %175 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %179 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %178)
  %180 = icmp sgt i32 %179, 1
  br label %181

181:                                              ; preds = %177, %169
  %182 = phi i1 [ false, %169 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %185 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 8
  %186 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %187 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = icmp sgt i32 %188, 2
  %190 = zext i1 %189 to i32
  %191 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %192 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %191, i32 0, i32 9
  store i32 %190, i32* %192, align 4
  %193 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %194 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %252

196:                                              ; preds = %181
  %197 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %198 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @hweight8(i32 %201)
  %203 = icmp eq i32 %202, 3
  %204 = zext i1 %203 to i32
  %205 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %206 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %208 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %207, i32 0, i32 10
  store i32 0, i32* %208, align 8
  %209 = load %struct.intel_device_info*, %struct.intel_device_info** %3, align 8
  %210 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %251

213:                                              ; preds = %196
  %214 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %215 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @BIT(i32 2)
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %213
  %223 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %224 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @BIT(i32 0)
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %222, %213
  %232 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %233 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %232, i32 0, i32 10
  store i32 3, i32* %233, align 8
  br label %250

234:                                              ; preds = %222
  %235 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %236 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %235, i32 0, i32 4
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @BIT(i32 1)
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %234
  %244 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %245 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %244, i32 0, i32 10
  store i32 6, i32* %245, align 8
  br label %249

246:                                              ; preds = %234
  %247 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %248 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %247, i32 0, i32 10
  store i32 9, i32* %248, align 8
  br label %249

249:                                              ; preds = %246, %243
  br label %250

250:                                              ; preds = %249, %231
  br label %251

251:                                              ; preds = %250, %196
  br label %252

252:                                              ; preds = %251, %181
  ret void
}

declare dso_local %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GEN9_EU_DISABLE(i32) #1

declare dso_local i32 @sseu_set_eus(%struct.sseu_dev_info*, i32, i32, i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @compute_eu_total(%struct.sseu_dev_info*) #1

declare dso_local i32 @intel_sseu_subslice_total(%struct.sseu_dev_info*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
