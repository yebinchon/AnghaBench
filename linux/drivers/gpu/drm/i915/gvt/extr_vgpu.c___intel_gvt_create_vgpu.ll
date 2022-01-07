; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c___intel_gvt_create_vgpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c___intel_gvt_create_vgpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.intel_gvt*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.intel_gvt = type { i32, i32 }
%struct.intel_vgpu_creation_params = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"handle %llu low %llu MB high %llu MB fence %llu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IDLE_VGPU_IDR = common dso_local global i64 0, align 8
@GVT_MAX_VGPU = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu* (%struct.intel_gvt*, %struct.intel_vgpu_creation_params*)* @__intel_gvt_create_vgpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu* @__intel_gvt_create_vgpu(%struct.intel_gvt* %0, %struct.intel_vgpu_creation_params* %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca %struct.intel_vgpu_creation_params*, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %4, align 8
  store %struct.intel_vgpu_creation_params* %1, %struct.intel_vgpu_creation_params** %5, align 8
  %8 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19)
  %21 = call %struct.intel_vgpu* @vzalloc(i32 48)
  store %struct.intel_vgpu* %21, %struct.intel_vgpu** %6, align 8
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %23 = icmp ne %struct.intel_vgpu* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.intel_vgpu* @ERR_PTR(i32 %26)
  store %struct.intel_vgpu* %27, %struct.intel_vgpu** %3, align 8
  br label %198

28:                                               ; preds = %2
  %29 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %30 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %29, i32 0, i32 0
  %31 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %32 = load i64, i64* @IDLE_VGPU_IDR, align 8
  %33 = add nsw i64 %32, 1
  %34 = load i32, i32* @GVT_MAX_VGPU, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @idr_alloc(i32* %30, %struct.intel_vgpu* %31, i64 %33, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %193

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %43 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %45 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %48 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %50 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %51 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %50, i32 0, i32 7
  store %struct.intel_gvt* %49, %struct.intel_gvt** %51, align 8
  %52 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %53 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %59 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %58, i32 0, i32 5
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %62 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %61, i32 0, i32 4
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %65 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %64, i32 0, i32 3
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %68 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %67, i32 0, i32 2
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @INIT_RADIX_TREE(i32* %68, i32 %69)
  %71 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %72 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %71, i32 0, i32 1
  %73 = call i32 @idr_init(i32* %72)
  %74 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %75 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %76 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @intel_vgpu_init_cfg_space(%struct.intel_vgpu* %74, i32 %77)
  %79 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %80 = call i32 @intel_vgpu_init_mmio(%struct.intel_vgpu* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %40
  br label %186

84:                                               ; preds = %40
  %85 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %86 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %87 = call i32 @intel_vgpu_alloc_resource(%struct.intel_vgpu* %85, %struct.intel_vgpu_creation_params* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %183

91:                                               ; preds = %84
  %92 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %93 = call i32 @populate_pvinfo_page(%struct.intel_vgpu* %92)
  %94 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %95 = call i32 @intel_gvt_hypervisor_attach_vgpu(%struct.intel_vgpu* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %180

99:                                               ; preds = %91
  %100 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %101 = call i32 @intel_vgpu_init_gtt(%struct.intel_vgpu* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %177

105:                                              ; preds = %99
  %106 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %107 = call i32 @intel_vgpu_init_opregion(%struct.intel_vgpu* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %174

111:                                              ; preds = %105
  %112 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %113 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %114 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @intel_vgpu_init_display(%struct.intel_vgpu* %112, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %171

120:                                              ; preds = %111
  %121 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %122 = call i32 @intel_vgpu_setup_submission(%struct.intel_vgpu* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %168

126:                                              ; preds = %120
  %127 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %128 = call i32 @intel_vgpu_init_sched_policy(%struct.intel_vgpu* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %165

132:                                              ; preds = %126
  %133 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %134 = call i32 @intel_gvt_debugfs_add_vgpu(%struct.intel_vgpu* %133)
  %135 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %136 = call i32 @intel_gvt_hypervisor_set_opregion(%struct.intel_vgpu* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %162

140:                                              ; preds = %132
  %141 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %142 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @IS_SKYLAKE(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %148 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @IS_KABYLAKE(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146, %140
  %153 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %154 = load i32, i32* @PORT_D, align 4
  %155 = call i32 @intel_gvt_hypervisor_set_edid(%struct.intel_vgpu* %153, i32 %154)
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %162

160:                                              ; preds = %156
  %161 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  store %struct.intel_vgpu* %161, %struct.intel_vgpu** %3, align 8
  br label %198

162:                                              ; preds = %159, %139
  %163 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %164 = call i32 @intel_vgpu_clean_sched_policy(%struct.intel_vgpu* %163)
  br label %165

165:                                              ; preds = %162, %131
  %166 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %167 = call i32 @intel_vgpu_clean_submission(%struct.intel_vgpu* %166)
  br label %168

168:                                              ; preds = %165, %125
  %169 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %170 = call i32 @intel_vgpu_clean_display(%struct.intel_vgpu* %169)
  br label %171

171:                                              ; preds = %168, %119
  %172 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %173 = call i32 @intel_vgpu_clean_opregion(%struct.intel_vgpu* %172)
  br label %174

174:                                              ; preds = %171, %110
  %175 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %176 = call i32 @intel_vgpu_clean_gtt(%struct.intel_vgpu* %175)
  br label %177

177:                                              ; preds = %174, %104
  %178 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %179 = call i32 @intel_gvt_hypervisor_detach_vgpu(%struct.intel_vgpu* %178)
  br label %180

180:                                              ; preds = %177, %98
  %181 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %182 = call i32 @intel_vgpu_free_resource(%struct.intel_vgpu* %181)
  br label %183

183:                                              ; preds = %180, %90
  %184 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %185 = call i32 @intel_vgpu_clean_mmio(%struct.intel_vgpu* %184)
  br label %186

186:                                              ; preds = %183, %83
  %187 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %188 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %187, i32 0, i32 0
  %189 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %190 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @idr_remove(i32* %188, i32 %191)
  br label %193

193:                                              ; preds = %186, %39
  %194 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %195 = call i32 @vfree(%struct.intel_vgpu* %194)
  %196 = load i32, i32* %7, align 4
  %197 = call %struct.intel_vgpu* @ERR_PTR(i32 %196)
  store %struct.intel_vgpu* %197, %struct.intel_vgpu** %3, align 8
  br label %198

198:                                              ; preds = %193, %160, %24
  %199 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  ret %struct.intel_vgpu* %199
}

declare dso_local i32 @gvt_dbg_core(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.intel_vgpu* @vzalloc(i32) #1

declare dso_local %struct.intel_vgpu* @ERR_PTR(i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.intel_vgpu*, i64, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @intel_vgpu_init_cfg_space(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @intel_vgpu_init_mmio(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_alloc_resource(%struct.intel_vgpu*, %struct.intel_vgpu_creation_params*) #1

declare dso_local i32 @populate_pvinfo_page(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_hypervisor_attach_vgpu(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_init_gtt(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_init_opregion(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_init_display(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @intel_vgpu_setup_submission(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_init_sched_policy(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_debugfs_add_vgpu(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_hypervisor_set_opregion(%struct.intel_vgpu*) #1

declare dso_local i64 @IS_SKYLAKE(i32) #1

declare dso_local i64 @IS_KABYLAKE(i32) #1

declare dso_local i32 @intel_gvt_hypervisor_set_edid(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @intel_vgpu_clean_sched_policy(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_submission(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_display(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_opregion(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_gtt(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_hypervisor_detach_vgpu(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_free_resource(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_clean_mmio(%struct.intel_vgpu*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @vfree(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
