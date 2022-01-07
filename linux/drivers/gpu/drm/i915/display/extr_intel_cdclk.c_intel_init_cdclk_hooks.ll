; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_init_cdclk_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_init_cdclk_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@icl_set_cdclk = common dso_local global i32 0, align 4
@icl_modeset_calc_cdclk = common dso_local global i8* null, align 8
@cnl_set_cdclk = common dso_local global i32 0, align 4
@cnl_modeset_calc_cdclk = common dso_local global i8* null, align 8
@bxt_set_cdclk = common dso_local global i32 0, align 4
@bxt_modeset_calc_cdclk = common dso_local global i8* null, align 8
@skl_set_cdclk = common dso_local global i32 0, align 4
@skl_modeset_calc_cdclk = common dso_local global i8* null, align 8
@bdw_set_cdclk = common dso_local global i32 0, align 4
@bdw_modeset_calc_cdclk = common dso_local global i8* null, align 8
@chv_set_cdclk = common dso_local global i32 0, align 4
@vlv_modeset_calc_cdclk = common dso_local global i8* null, align 8
@vlv_set_cdclk = common dso_local global i32 0, align 4
@icl_get_cdclk = common dso_local global i8* null, align 8
@cnl_get_cdclk = common dso_local global i8* null, align 8
@bxt_get_cdclk = common dso_local global i8* null, align 8
@skl_get_cdclk = common dso_local global i8* null, align 8
@bdw_get_cdclk = common dso_local global i8* null, align 8
@hsw_get_cdclk = common dso_local global i8* null, align 8
@vlv_get_cdclk = common dso_local global i8* null, align 8
@fixed_400mhz_get_cdclk = common dso_local global i8* null, align 8
@fixed_450mhz_get_cdclk = common dso_local global i8* null, align 8
@gm45_get_cdclk = common dso_local global i8* null, align 8
@g33_get_cdclk = common dso_local global i8* null, align 8
@i965gm_get_cdclk = common dso_local global i8* null, align 8
@pnv_get_cdclk = common dso_local global i8* null, align 8
@i945gm_get_cdclk = common dso_local global i8* null, align 8
@i915gm_get_cdclk = common dso_local global i8* null, align 8
@fixed_333mhz_get_cdclk = common dso_local global i8* null, align 8
@fixed_266mhz_get_cdclk = common dso_local global i8* null, align 8
@i85x_get_cdclk = common dso_local global i8* null, align 8
@fixed_200mhz_get_cdclk = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unknown platform. Assuming 133 MHz CDCLK\0A\00", align 1
@fixed_133mhz_get_cdclk = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_init_cdclk_hooks(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @INTEL_GEN(%struct.drm_i915_private* %3)
  %5 = icmp sge i32 %4, 11
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* @icl_set_cdclk, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 8
  %11 = load i8*, i8** @icl_modeset_calc_cdclk, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i8* %11, i8** %14, align 8
  br label %99

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* @cnl_set_cdclk, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load i8*, i8** @cnl_modeset_calc_cdclk, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  br label %98

28:                                               ; preds = %15
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* @bxt_set_cdclk, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i8*, i8** @bxt_modeset_calc_cdclk, align 8
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  br label %97

41:                                               ; preds = %28
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* @skl_set_cdclk, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** @skl_modeset_calc_cdclk, align 8
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  br label %96

54:                                               ; preds = %41
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* @bdw_set_cdclk, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i8*, i8** @bdw_modeset_calc_cdclk, align 8
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  br label %95

67:                                               ; preds = %54
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %69 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* @chv_set_cdclk, align 4
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load i8*, i8** @vlv_modeset_calc_cdclk, align 8
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  br label %94

80:                                               ; preds = %67
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %82 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @vlv_set_cdclk, align 4
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %87 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load i8*, i8** @vlv_modeset_calc_cdclk, align 8
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %84, %80
  br label %94

94:                                               ; preds = %93, %71
  br label %95

95:                                               ; preds = %94, %58
  br label %96

96:                                               ; preds = %95, %45
  br label %97

97:                                               ; preds = %96, %32
  br label %98

98:                                               ; preds = %97, %19
  br label %99

99:                                               ; preds = %98, %6
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %101 = call i32 @INTEL_GEN(%struct.drm_i915_private* %100)
  %102 = icmp sge i32 %101, 11
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8*, i8** @icl_get_cdclk, align 8
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  br label %337

108:                                              ; preds = %99
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %110 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i8*, i8** @cnl_get_cdclk, align 8
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %115 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  br label %336

117:                                              ; preds = %108
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %119 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i8*, i8** @bxt_get_cdclk, align 8
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %335

126:                                              ; preds = %117
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %128 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i8*, i8** @skl_get_cdclk, align 8
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %133 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  br label %334

135:                                              ; preds = %126
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %137 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i8*, i8** @bdw_get_cdclk, align 8
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %142 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i8* %140, i8** %143, align 8
  br label %333

144:                                              ; preds = %135
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %146 = call i64 @IS_HASWELL(%struct.drm_i915_private* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i8*, i8** @hsw_get_cdclk, align 8
  %150 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %151 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  br label %332

153:                                              ; preds = %144
  %154 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %155 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %159 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %153
  %162 = load i8*, i8** @vlv_get_cdclk, align 8
  %163 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %164 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  store i8* %162, i8** %165, align 8
  br label %331

166:                                              ; preds = %157
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %168 = call i64 @IS_GEN(%struct.drm_i915_private* %167, i32 6)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %172 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %170, %166
  %175 = load i8*, i8** @fixed_400mhz_get_cdclk, align 8
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %177 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store i8* %175, i8** %178, align 8
  br label %330

179:                                              ; preds = %170
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %181 = call i64 @IS_GEN(%struct.drm_i915_private* %180, i32 5)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i8*, i8** @fixed_450mhz_get_cdclk, align 8
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %186 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i8* %184, i8** %187, align 8
  br label %329

188:                                              ; preds = %179
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %190 = call i64 @IS_GM45(%struct.drm_i915_private* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i8*, i8** @gm45_get_cdclk, align 8
  %194 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %195 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  br label %328

197:                                              ; preds = %188
  %198 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %199 = call i64 @IS_G45(%struct.drm_i915_private* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i8*, i8** @g33_get_cdclk, align 8
  %203 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %204 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  store i8* %202, i8** %205, align 8
  br label %327

206:                                              ; preds = %197
  %207 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %208 = call i64 @IS_I965GM(%struct.drm_i915_private* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i8*, i8** @i965gm_get_cdclk, align 8
  %212 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %213 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  store i8* %211, i8** %214, align 8
  br label %326

215:                                              ; preds = %206
  %216 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %217 = call i64 @IS_I965G(%struct.drm_i915_private* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load i8*, i8** @fixed_400mhz_get_cdclk, align 8
  %221 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %222 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  store i8* %220, i8** %223, align 8
  br label %325

224:                                              ; preds = %215
  %225 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %226 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load i8*, i8** @pnv_get_cdclk, align 8
  %230 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %231 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  store i8* %229, i8** %232, align 8
  br label %324

233:                                              ; preds = %224
  %234 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %235 = call i64 @IS_G33(%struct.drm_i915_private* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load i8*, i8** @g33_get_cdclk, align 8
  %239 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %240 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i8* %238, i8** %241, align 8
  br label %323

242:                                              ; preds = %233
  %243 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %244 = call i64 @IS_I945GM(%struct.drm_i915_private* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load i8*, i8** @i945gm_get_cdclk, align 8
  %248 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %249 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  store i8* %247, i8** %250, align 8
  br label %322

251:                                              ; preds = %242
  %252 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %253 = call i64 @IS_I945G(%struct.drm_i915_private* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %251
  %256 = load i8*, i8** @fixed_400mhz_get_cdclk, align 8
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %258 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  store i8* %256, i8** %259, align 8
  br label %321

260:                                              ; preds = %251
  %261 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %262 = call i64 @IS_I915GM(%struct.drm_i915_private* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load i8*, i8** @i915gm_get_cdclk, align 8
  %266 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %267 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  store i8* %265, i8** %268, align 8
  br label %320

269:                                              ; preds = %260
  %270 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %271 = call i64 @IS_I915G(%struct.drm_i915_private* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load i8*, i8** @fixed_333mhz_get_cdclk, align 8
  %275 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %276 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  store i8* %274, i8** %277, align 8
  br label %319

278:                                              ; preds = %269
  %279 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %280 = call i64 @IS_I865G(%struct.drm_i915_private* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = load i8*, i8** @fixed_266mhz_get_cdclk, align 8
  %284 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %285 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  store i8* %283, i8** %286, align 8
  br label %318

287:                                              ; preds = %278
  %288 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %289 = call i64 @IS_I85X(%struct.drm_i915_private* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %287
  %292 = load i8*, i8** @i85x_get_cdclk, align 8
  %293 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %294 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  store i8* %292, i8** %295, align 8
  br label %317

296:                                              ; preds = %287
  %297 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %298 = call i64 @IS_I845G(%struct.drm_i915_private* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = load i8*, i8** @fixed_200mhz_get_cdclk, align 8
  %302 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %303 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  store i8* %301, i8** %304, align 8
  br label %316

305:                                              ; preds = %296
  %306 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %307 = call i32 @IS_I830(%struct.drm_i915_private* %306)
  %308 = icmp ne i32 %307, 0
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = call i32 @WARN(i32 %310, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %312 = load i8*, i8** @fixed_133mhz_get_cdclk, align 8
  %313 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %314 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  store i8* %312, i8** %315, align 8
  br label %316

316:                                              ; preds = %305, %300
  br label %317

317:                                              ; preds = %316, %291
  br label %318

318:                                              ; preds = %317, %282
  br label %319

319:                                              ; preds = %318, %273
  br label %320

320:                                              ; preds = %319, %264
  br label %321

321:                                              ; preds = %320, %255
  br label %322

322:                                              ; preds = %321, %246
  br label %323

323:                                              ; preds = %322, %237
  br label %324

324:                                              ; preds = %323, %228
  br label %325

325:                                              ; preds = %324, %219
  br label %326

326:                                              ; preds = %325, %210
  br label %327

327:                                              ; preds = %326, %201
  br label %328

328:                                              ; preds = %327, %192
  br label %329

329:                                              ; preds = %328, %183
  br label %330

330:                                              ; preds = %329, %174
  br label %331

331:                                              ; preds = %330, %161
  br label %332

332:                                              ; preds = %331, %148
  br label %333

333:                                              ; preds = %332, %139
  br label %334

334:                                              ; preds = %333, %130
  br label %335

335:                                              ; preds = %334, %121
  br label %336

336:                                              ; preds = %335, %112
  br label %337

337:                                              ; preds = %336, %103
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GM45(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G45(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G33(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I865G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I85X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I845G(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @IS_I830(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
