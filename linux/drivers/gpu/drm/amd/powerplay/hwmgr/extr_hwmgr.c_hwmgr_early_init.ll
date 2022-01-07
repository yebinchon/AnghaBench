; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i32, i32, i32, i32*, i32, i8*, i8*, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AMD_MAX_USEC_TIMEOUT = common dso_local global i32 0, align 4
@PP_TABLE_V1 = common dso_local global i8* null, align 8
@AMD_DPM_FORCED_LEVEL_AUTO = common dso_local global i8* null, align 8
@ci_smu_funcs = common dso_local global i32 0, align 4
@PP_VBI_TIME_SUPPORT_MASK = common dso_local global i32 0, align 4
@PP_ENABLE_GFX_CG_THRU_SMU = common dso_local global i32 0, align 4
@PP_GFXOFF_MASK = common dso_local global i32 0, align 4
@PP_TABLE_V0 = common dso_local global i8* null, align 8
@smu8_smu_funcs = common dso_local global i32 0, align 4
@iceland_smu_funcs = common dso_local global i32 0, align 4
@tonga_smu_funcs = common dso_local global i32 0, align 4
@fiji_smu_funcs = common dso_local global i32 0, align 4
@polaris10_smu_funcs = common dso_local global i32 0, align 4
@PP_UVD_HANDSHAKE_MASK = common dso_local global i32 0, align 4
@vegam_smu_funcs = common dso_local global i32 0, align 4
@vega10_smu_funcs = common dso_local global i32 0, align 4
@vega12_smu_funcs = common dso_local global i32 0, align 4
@vega20_smu_funcs = common dso_local global i32 0, align 4
@smu10_smu_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwmgr_early_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %5 = icmp ne %struct.pp_hwmgr* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %204

9:                                                ; preds = %1
  %10 = load i32, i32* @AMD_MAX_USEC_TIMEOUT, align 4
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 10
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** @PP_TABLE_V1, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @AMD_DPM_FORCED_LEVEL_AUTO, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 9
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @AMD_DPM_FORCED_LEVEL_AUTO, align 8
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 8
  store i8* %19, i8** %21, align 8
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %23 = call i32 @hwmgr_init_default_caps(%struct.pp_hwmgr* %22)
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = call i32 @hwmgr_set_user_specify_caps(%struct.pp_hwmgr* %24)
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = call i32 @hwmgr_init_workload_prority(%struct.pp_hwmgr* %28)
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %200 [
    i32 142, label %35
    i32 141, label %57
    i32 139, label %70
    i32 143, label %150
    i32 140, label %185
  ]

35:                                               ; preds = %9
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 5
  store i32* @ci_smu_funcs, i32** %37, align 8
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = call i32 @ci_set_asic_special_caps(%struct.pp_hwmgr* %38)
  %40 = load i32, i32* @PP_VBI_TIME_SUPPORT_MASK, align 4
  %41 = load i32, i32* @PP_ENABLE_GFX_CG_THRU_SMU, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PP_GFXOFF_MASK, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i8*, i8** @PP_TABLE_V0, align 8
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %54 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %53, i32 0, i32 4
  store i32 0, i32* %54, align 8
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %56 = call i32 @smu7_init_function_pointers(%struct.pp_hwmgr* %55)
  br label %203

57:                                               ; preds = %9
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 4
  store i32 0, i32* %59, align 8
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 5
  store i32* @smu8_smu_funcs, i32** %61, align 8
  %62 = load i32, i32* @PP_GFXOFF_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %69 = call i32 @smu8_init_function_pointers(%struct.pp_hwmgr* %68)
  br label %203

70:                                               ; preds = %9
  %71 = load i32, i32* @PP_GFXOFF_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %74 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %144 [
    i32 132, label %80
    i32 133, label %98
    i32 138, label %109
    i32 136, label %122
    i32 137, label %122
    i32 135, label %122
    i32 128, label %133
  ]

80:                                               ; preds = %70
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %82 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %81, i32 0, i32 5
  store i32* @iceland_smu_funcs, i32** %82, align 8
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %84 = call i32 @topaz_set_asic_special_caps(%struct.pp_hwmgr* %83)
  %85 = load i32, i32* @PP_VBI_TIME_SUPPORT_MASK, align 4
  %86 = load i32, i32* @PP_ENABLE_GFX_CG_THRU_SMU, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %90 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i8*, i8** @PP_TABLE_V0, align 8
  %94 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %95 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %97 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %96, i32 0, i32 4
  store i32 0, i32* %97, align 8
  br label %147

98:                                               ; preds = %70
  %99 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %100 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %99, i32 0, i32 5
  store i32* @tonga_smu_funcs, i32** %100, align 8
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = call i32 @tonga_set_asic_special_caps(%struct.pp_hwmgr* %101)
  %103 = load i32, i32* @PP_VBI_TIME_SUPPORT_MASK, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %147

109:                                              ; preds = %70
  %110 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %111 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %110, i32 0, i32 5
  store i32* @fiji_smu_funcs, i32** %111, align 8
  %112 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %113 = call i32 @fiji_set_asic_special_caps(%struct.pp_hwmgr* %112)
  %114 = load i32, i32* @PP_VBI_TIME_SUPPORT_MASK, align 4
  %115 = load i32, i32* @PP_ENABLE_GFX_CG_THRU_SMU, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %119 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %147

122:                                              ; preds = %70, %70, %70
  %123 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %124 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %123, i32 0, i32 5
  store i32* @polaris10_smu_funcs, i32** %124, align 8
  %125 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %126 = call i32 @polaris_set_asic_special_caps(%struct.pp_hwmgr* %125)
  %127 = load i32, i32* @PP_UVD_HANDSHAKE_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %130 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %147

133:                                              ; preds = %70
  %134 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %135 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %134, i32 0, i32 5
  store i32* @vegam_smu_funcs, i32** %135, align 8
  %136 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %137 = call i32 @polaris_set_asic_special_caps(%struct.pp_hwmgr* %136)
  %138 = load i32, i32* @PP_UVD_HANDSHAKE_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %141 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %147

144:                                              ; preds = %70
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %204

147:                                              ; preds = %133, %122, %109, %98, %80
  %148 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %149 = call i32 @smu7_init_function_pointers(%struct.pp_hwmgr* %148)
  br label %203

150:                                              ; preds = %9
  %151 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %152 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %181 [
    i32 131, label %154
    i32 130, label %165
    i32 129, label %170
  ]

154:                                              ; preds = %150
  %155 = load i32, i32* @PP_GFXOFF_MASK, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %158 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %162 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %161, i32 0, i32 5
  store i32* @vega10_smu_funcs, i32** %162, align 8
  %163 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %164 = call i32 @vega10_hwmgr_init(%struct.pp_hwmgr* %163)
  br label %184

165:                                              ; preds = %150
  %166 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %167 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %166, i32 0, i32 5
  store i32* @vega12_smu_funcs, i32** %167, align 8
  %168 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %169 = call i32 @vega12_hwmgr_init(%struct.pp_hwmgr* %168)
  br label %184

170:                                              ; preds = %150
  %171 = load i32, i32* @PP_GFXOFF_MASK, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %174 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %178 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %177, i32 0, i32 5
  store i32* @vega20_smu_funcs, i32** %178, align 8
  %179 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %180 = call i32 @vega20_hwmgr_init(%struct.pp_hwmgr* %179)
  br label %184

181:                                              ; preds = %150
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %204

184:                                              ; preds = %170, %165, %154
  br label %203

185:                                              ; preds = %9
  %186 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %187 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  switch i32 %188, label %196 [
    i32 134, label %189
  ]

189:                                              ; preds = %185
  %190 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %191 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %190, i32 0, i32 4
  store i32 0, i32* %191, align 8
  %192 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %193 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %192, i32 0, i32 5
  store i32* @smu10_smu_funcs, i32** %193, align 8
  %194 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %195 = call i32 @smu10_init_function_pointers(%struct.pp_hwmgr* %194)
  br label %199

196:                                              ; preds = %185
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %204

199:                                              ; preds = %189
  br label %203

200:                                              ; preds = %9
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %2, align 4
  br label %204

203:                                              ; preds = %199, %184, %147, %57, %35
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %203, %200, %196, %181, %144, %6
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @hwmgr_init_default_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @hwmgr_set_user_specify_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @hwmgr_init_workload_prority(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_set_asic_special_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_init_function_pointers(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu8_init_function_pointers(%struct.pp_hwmgr*) #1

declare dso_local i32 @topaz_set_asic_special_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @tonga_set_asic_special_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @fiji_set_asic_special_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @polaris_set_asic_special_caps(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega10_hwmgr_init(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega12_hwmgr_init(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega20_hwmgr_init(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu10_init_function_pointers(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
