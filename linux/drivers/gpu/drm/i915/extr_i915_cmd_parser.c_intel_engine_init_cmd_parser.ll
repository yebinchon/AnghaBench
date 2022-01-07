; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_intel_engine_init_cmd_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_intel_engine_init_cmd_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.drm_i915_cmd_table = type { i32 }

@hsw_render_ring_cmd_table = common dso_local global i8* null, align 8
@gen7_render_cmd_table = common dso_local global i8* null, align 8
@hsw_render_reg_tables = common dso_local global i8* null, align 8
@ivb_render_reg_tables = common dso_local global i8* null, align 8
@gen7_render_get_cmd_length_mask = common dso_local global i8* null, align 8
@gen7_video_cmd_table = common dso_local global i8* null, align 8
@gen7_bsd_get_cmd_length_mask = common dso_local global i8* null, align 8
@gen7_blt_get_cmd_length_mask = common dso_local global i8* null, align 8
@gen9_blt_cmd_table = common dso_local global i8* null, align 8
@gen9_blt_get_cmd_length_mask = common dso_local global i8* null, align 8
@I915_ENGINE_REQUIRES_CMD_PARSER = common dso_local global i32 0, align 4
@hsw_blt_ring_cmd_table = common dso_local global i8* null, align 8
@gen7_blt_cmd_table = common dso_local global i8* null, align 8
@gen9_blt_reg_tables = common dso_local global i8* null, align 8
@hsw_blt_reg_tables = common dso_local global i8* null, align 8
@ivb_blt_reg_tables = common dso_local global i8* null, align 8
@hsw_vebox_cmd_table = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: command descriptions are not sorted\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: registers are not sorted\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: initialised failed!\0A\00", align 1
@I915_ENGINE_USING_CMD_PARSER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_init_cmd_parser(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_cmd_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %6 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %7 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @IS_GEN(i32 %8, i32 7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @IS_GEN(i32 %14, i32 9)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 131
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %11
  br label %214

23:                                               ; preds = %17, %1
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %169 [
    i32 130, label %27
    i32 129, label %71
    i32 131, label %80
    i32 128, label %160
  ]

27:                                               ; preds = %23
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IS_HASWELL(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i8*, i8** @hsw_render_ring_cmd_table, align 8
  %35 = bitcast i8* %34 to %struct.drm_i915_cmd_table*
  store %struct.drm_i915_cmd_table* %35, %struct.drm_i915_cmd_table** %3, align 8
  %36 = load i8*, i8** @hsw_render_ring_cmd_table, align 8
  %37 = call i8* @ARRAY_SIZE(i8* %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %27
  %40 = load i8*, i8** @gen7_render_cmd_table, align 8
  %41 = bitcast i8* %40 to %struct.drm_i915_cmd_table*
  store %struct.drm_i915_cmd_table* %41, %struct.drm_i915_cmd_table** %3, align 8
  %42 = load i8*, i8** @gen7_render_cmd_table, align 8
  %43 = call i8* @ARRAY_SIZE(i8* %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %47 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @IS_HASWELL(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8*, i8** @hsw_render_reg_tables, align 8
  %53 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %54 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @hsw_render_reg_tables, align 8
  %56 = call i8* @ARRAY_SIZE(i8* %55)
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %58 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  br label %67

59:                                               ; preds = %45
  %60 = load i8*, i8** @ivb_render_reg_tables, align 8
  %61 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %62 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @ivb_render_reg_tables, align 8
  %64 = call i8* @ARRAY_SIZE(i8* %63)
  %65 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %66 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %59, %51
  %68 = load i8*, i8** @gen7_render_get_cmd_length_mask, align 8
  %69 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %70 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  br label %174

71:                                               ; preds = %23
  %72 = load i8*, i8** @gen7_video_cmd_table, align 8
  %73 = bitcast i8* %72 to %struct.drm_i915_cmd_table*
  store %struct.drm_i915_cmd_table* %73, %struct.drm_i915_cmd_table** %3, align 8
  %74 = load i8*, i8** @gen7_video_cmd_table, align 8
  %75 = call i8* @ARRAY_SIZE(i8* %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %4, align 4
  %77 = load i8*, i8** @gen7_bsd_get_cmd_length_mask, align 8
  %78 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %79 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  br label %174

80:                                               ; preds = %23
  %81 = load i8*, i8** @gen7_blt_get_cmd_length_mask, align 8
  %82 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %83 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %85 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_GEN(i32 %86, i32 9)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %80
  %90 = load i8*, i8** @gen9_blt_cmd_table, align 8
  %91 = bitcast i8* %90 to %struct.drm_i915_cmd_table*
  store %struct.drm_i915_cmd_table* %91, %struct.drm_i915_cmd_table** %3, align 8
  %92 = load i8*, i8** @gen9_blt_cmd_table, align 8
  %93 = call i8* @ARRAY_SIZE(i8* %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load i8*, i8** @gen9_blt_get_cmd_length_mask, align 8
  %96 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %97 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @I915_ENGINE_REQUIRES_CMD_PARSER, align 4
  %99 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %100 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %122

103:                                              ; preds = %80
  %104 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %105 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @IS_HASWELL(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i8*, i8** @hsw_blt_ring_cmd_table, align 8
  %111 = bitcast i8* %110 to %struct.drm_i915_cmd_table*
  store %struct.drm_i915_cmd_table* %111, %struct.drm_i915_cmd_table** %3, align 8
  %112 = load i8*, i8** @hsw_blt_ring_cmd_table, align 8
  %113 = call i8* @ARRAY_SIZE(i8* %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %4, align 4
  br label %121

115:                                              ; preds = %103
  %116 = load i8*, i8** @gen7_blt_cmd_table, align 8
  %117 = bitcast i8* %116 to %struct.drm_i915_cmd_table*
  store %struct.drm_i915_cmd_table* %117, %struct.drm_i915_cmd_table** %3, align 8
  %118 = load i8*, i8** @gen7_blt_cmd_table, align 8
  %119 = call i8* @ARRAY_SIZE(i8* %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %115, %109
  br label %122

122:                                              ; preds = %121, %89
  %123 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %124 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @IS_GEN(i32 %125, i32 9)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load i8*, i8** @gen9_blt_reg_tables, align 8
  %130 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %131 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @gen9_blt_reg_tables, align 8
  %133 = call i8* @ARRAY_SIZE(i8* %132)
  %134 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %135 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  br label %159

136:                                              ; preds = %122
  %137 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %138 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @IS_HASWELL(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load i8*, i8** @hsw_blt_reg_tables, align 8
  %144 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %145 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** @hsw_blt_reg_tables, align 8
  %147 = call i8* @ARRAY_SIZE(i8* %146)
  %148 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %149 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %148, i32 0, i32 4
  store i8* %147, i8** %149, align 8
  br label %158

150:                                              ; preds = %136
  %151 = load i8*, i8** @ivb_blt_reg_tables, align 8
  %152 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %153 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @ivb_blt_reg_tables, align 8
  %155 = call i8* @ARRAY_SIZE(i8* %154)
  %156 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %157 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %150, %142
  br label %159

159:                                              ; preds = %158, %128
  br label %174

160:                                              ; preds = %23
  %161 = load i8*, i8** @hsw_vebox_cmd_table, align 8
  %162 = bitcast i8* %161 to %struct.drm_i915_cmd_table*
  store %struct.drm_i915_cmd_table* %162, %struct.drm_i915_cmd_table** %3, align 8
  %163 = load i8*, i8** @hsw_vebox_cmd_table, align 8
  %164 = call i8* @ARRAY_SIZE(i8* %163)
  %165 = ptrtoint i8* %164 to i32
  store i32 %165, i32* %4, align 4
  %166 = load i8*, i8** @gen7_bsd_get_cmd_length_mask, align 8
  %167 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %168 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  br label %174

169:                                              ; preds = %23
  %170 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %171 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @MISSING_CASE(i32 %172)
  br label %214

174:                                              ; preds = %160, %159, %71, %67
  %175 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %176 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %3, align 8
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @validate_cmds_sorted(%struct.intel_engine_cs* %175, %struct.drm_i915_cmd_table* %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %174
  %181 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %182 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %183)
  br label %214

185:                                              ; preds = %174
  %186 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %187 = call i32 @validate_regs_sorted(%struct.intel_engine_cs* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %191 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  br label %214

194:                                              ; preds = %185
  %195 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %196 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %3, align 8
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @init_hash_table(%struct.intel_engine_cs* %195, %struct.drm_i915_cmd_table* %196, i32 %197)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %203 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  %206 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %207 = call i32 @fini_hash_table(%struct.intel_engine_cs* %206)
  br label %214

208:                                              ; preds = %194
  %209 = load i32, i32* @I915_ENGINE_USING_CMD_PARSER, align 4
  %210 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %211 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %208, %201, %189, %180, %169, %22
  ret void
}

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i32 @IS_HASWELL(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @validate_cmds_sorted(%struct.intel_engine_cs*, %struct.drm_i915_cmd_table*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @validate_regs_sorted(%struct.intel_engine_cs*) #1

declare dso_local i32 @init_hash_table(%struct.intel_engine_cs*, %struct.drm_i915_cmd_table*, i32) #1

declare dso_local i32 @fini_hash_table(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
