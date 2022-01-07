; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_clock_gating_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_clock_gating_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@nop_init_clock_gating = common dso_local global i8* null, align 8
@icl_init_clock_gating = common dso_local global i8* null, align 8
@cnl_init_clock_gating = common dso_local global i8* null, align 8
@cfl_init_clock_gating = common dso_local global i8* null, align 8
@skl_init_clock_gating = common dso_local global i8* null, align 8
@kbl_init_clock_gating = common dso_local global i8* null, align 8
@bxt_init_clock_gating = common dso_local global i8* null, align 8
@glk_init_clock_gating = common dso_local global i8* null, align 8
@bdw_init_clock_gating = common dso_local global i8* null, align 8
@chv_init_clock_gating = common dso_local global i8* null, align 8
@hsw_init_clock_gating = common dso_local global i8* null, align 8
@ivb_init_clock_gating = common dso_local global i8* null, align 8
@vlv_init_clock_gating = common dso_local global i8* null, align 8
@gen6_init_clock_gating = common dso_local global i8* null, align 8
@ilk_init_clock_gating = common dso_local global i8* null, align 8
@g4x_init_clock_gating = common dso_local global i8* null, align 8
@i965gm_init_clock_gating = common dso_local global i8* null, align 8
@i965g_init_clock_gating = common dso_local global i8* null, align 8
@gen3_init_clock_gating = common dso_local global i8* null, align 8
@i85x_init_clock_gating = common dso_local global i8* null, align 8
@i830_init_clock_gating = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_init_clock_gating_hooks(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i64 @IS_GEN(%struct.drm_i915_private* %3, i32 12)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i8*, i8** @nop_init_clock_gating, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i8* %7, i8** %10, align 8
  br label %223

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = call i64 @IS_GEN(%struct.drm_i915_private* %12, i32 11)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i8*, i8** @icl_init_clock_gating, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  br label %222

20:                                               ; preds = %11
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8*, i8** @cnl_init_clock_gating, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  br label %221

29:                                               ; preds = %20
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8*, i8** @cfl_init_clock_gating, align 8
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  br label %220

38:                                               ; preds = %29
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** @skl_init_clock_gating, align 8
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  br label %219

47:                                               ; preds = %38
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8*, i8** @kbl_init_clock_gating, align 8
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %218

56:                                               ; preds = %47
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = call i64 @IS_BROXTON(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i8*, i8** @bxt_init_clock_gating, align 8
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  br label %217

65:                                               ; preds = %56
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %67 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i8*, i8** @glk_init_clock_gating, align 8
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %216

74:                                               ; preds = %65
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** @bdw_init_clock_gating, align 8
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %81 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  br label %215

83:                                               ; preds = %74
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %85 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** @chv_init_clock_gating, align 8
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  br label %214

92:                                               ; preds = %83
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %94 = call i64 @IS_HASWELL(%struct.drm_i915_private* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i8*, i8** @hsw_init_clock_gating, align 8
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  br label %213

101:                                              ; preds = %92
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %103 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i8*, i8** @ivb_init_clock_gating, align 8
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %108 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  br label %212

110:                                              ; preds = %101
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %112 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8*, i8** @vlv_init_clock_gating, align 8
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  br label %211

119:                                              ; preds = %110
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %121 = call i64 @IS_GEN(%struct.drm_i915_private* %120, i32 6)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i8*, i8** @gen6_init_clock_gating, align 8
  %125 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %126 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  br label %210

128:                                              ; preds = %119
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %130 = call i64 @IS_GEN(%struct.drm_i915_private* %129, i32 5)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8*, i8** @ilk_init_clock_gating, align 8
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %135 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  br label %209

137:                                              ; preds = %128
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %139 = call i64 @IS_G4X(%struct.drm_i915_private* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i8*, i8** @g4x_init_clock_gating, align 8
  %143 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %144 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i8* %142, i8** %145, align 8
  br label %208

146:                                              ; preds = %137
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %148 = call i64 @IS_I965GM(%struct.drm_i915_private* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i8*, i8** @i965gm_init_clock_gating, align 8
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i8* %151, i8** %154, align 8
  br label %207

155:                                              ; preds = %146
  %156 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %157 = call i64 @IS_I965G(%struct.drm_i915_private* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i8*, i8** @i965g_init_clock_gating, align 8
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %162 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  br label %206

164:                                              ; preds = %155
  %165 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %166 = call i64 @IS_GEN(%struct.drm_i915_private* %165, i32 3)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i8*, i8** @gen3_init_clock_gating, align 8
  %170 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %171 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  br label %205

173:                                              ; preds = %164
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %175 = call i64 @IS_I85X(%struct.drm_i915_private* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %179 = call i64 @IS_I865G(%struct.drm_i915_private* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %177, %173
  %182 = load i8*, i8** @i85x_init_clock_gating, align 8
  %183 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %184 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store i8* %182, i8** %185, align 8
  br label %204

186:                                              ; preds = %177
  %187 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %188 = call i64 @IS_GEN(%struct.drm_i915_private* %187, i32 2)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i8*, i8** @i830_init_clock_gating, align 8
  %192 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %193 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  store i8* %191, i8** %194, align 8
  br label %203

195:                                              ; preds = %186
  %196 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %197 = call i32 @INTEL_DEVID(%struct.drm_i915_private* %196)
  %198 = call i32 @MISSING_CASE(i32 %197)
  %199 = load i8*, i8** @nop_init_clock_gating, align 8
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %201 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  br label %203

203:                                              ; preds = %195, %190
  br label %204

204:                                              ; preds = %203, %181
  br label %205

205:                                              ; preds = %204, %168
  br label %206

206:                                              ; preds = %205, %159
  br label %207

207:                                              ; preds = %206, %150
  br label %208

208:                                              ; preds = %207, %141
  br label %209

209:                                              ; preds = %208, %132
  br label %210

210:                                              ; preds = %209, %123
  br label %211

211:                                              ; preds = %210, %114
  br label %212

212:                                              ; preds = %211, %105
  br label %213

213:                                              ; preds = %212, %96
  br label %214

214:                                              ; preds = %213, %87
  br label %215

215:                                              ; preds = %214, %78
  br label %216

216:                                              ; preds = %215, %69
  br label %217

217:                                              ; preds = %216, %60
  br label %218

218:                                              ; preds = %217, %51
  br label %219

219:                                              ; preds = %218, %42
  br label %220

220:                                              ; preds = %219, %33
  br label %221

221:                                              ; preds = %220, %24
  br label %222

222:                                              ; preds = %221, %15
  br label %223

223:                                              ; preds = %222, %6
  ret void
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I85X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I865G(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @INTEL_DEVID(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
