; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_smu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.smu8_smumgr* }
%struct.smu8_smumgr = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UCODE_ID_RLC_SCRATCH_SIZE_BYTE = common dso_local global i32 0, align 4
@UCODE_ID_RLC_SRM_ARAM_SIZE_BYTE = common dso_local global i32 0, align 4
@UCODE_ID_RLC_SRM_DRAM_SIZE_BYTE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error when Populate Firmware Entry.\0A\00", align 1
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_UCODE_ID_POWER_PROFILING = common dso_local global i32 0, align 4
@SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_smu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_smu_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu8_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.smu8_smumgr* @kzalloc(i32 48, i32 %6)
  store %struct.smu8_smumgr* %7, %struct.smu8_smumgr** %5, align 8
  %8 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %9 = icmp eq %struct.smu8_smumgr* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %193

13:                                               ; preds = %1
  %14 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  store %struct.smu8_smumgr* %14, %struct.smu8_smumgr** %16, align 8
  %17 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %18 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 4096, i32* %19, align 8
  %20 = load i32, i32* @UCODE_ID_RLC_SCRATCH_SIZE_BYTE, align 4
  %21 = call i32 @ALIGN(i32 %20, i32 32)
  %22 = load i32, i32* @UCODE_ID_RLC_SRM_ARAM_SIZE_BYTE, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 32)
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* @UCODE_ID_RLC_SRM_DRAM_SIZE_BYTE, align 4
  %26 = call i32 @ALIGN(i32 %25, i32 32)
  %27 = add nsw i32 %24, %26
  %28 = call i32 @ALIGN(i32 4, i32 32)
  %29 = add nsw i32 %27, %28
  %30 = call i32 @ALIGN(i32 4, i32 32)
  %31 = add nsw i32 %29, %30
  %32 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %33 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.amdgpu_device*
  %39 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %40 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %45 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %46 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %49 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %52 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %38, i32 %42, i32 %43, i32 %44, i32* %47, i32* %50, i32* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %13
  br label %188

58:                                               ; preds = %13
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.amdgpu_device*
  %63 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %64 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %69 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %70 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %73 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %76 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %62, i32 %66, i32 %67, i32 %68, i32* %71, i32* %74, i32* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  br label %177

82:                                               ; preds = %58
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %84 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH, align 4
  %85 = load i32, i32* @UCODE_ID_RLC_SCRATCH_SIZE_BYTE, align 4
  %86 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %87 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %90 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = call i64 @smu8_smu_populate_single_scratch_entry(%struct.pp_hwmgr* %83, i32 %84, i32 %85, i32* %94)
  %96 = icmp ne i64 0, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %166

99:                                               ; preds = %82
  %100 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %101 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM, align 4
  %102 = load i32, i32* @UCODE_ID_RLC_SRM_ARAM_SIZE_BYTE, align 4
  %103 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %104 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %107 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  %112 = call i64 @smu8_smu_populate_single_scratch_entry(%struct.pp_hwmgr* %100, i32 %101, i32 %102, i32* %111)
  %113 = icmp ne i64 0, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %99
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %166

116:                                              ; preds = %99
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %118 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM, align 4
  %119 = load i32, i32* @UCODE_ID_RLC_SRM_DRAM_SIZE_BYTE, align 4
  %120 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %121 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %124 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %122, i64 %127
  %129 = call i64 @smu8_smu_populate_single_scratch_entry(%struct.pp_hwmgr* %117, i32 %118, i32 %119, i32* %128)
  %130 = icmp ne i64 0, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %116
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %166

133:                                              ; preds = %116
  %134 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %135 = load i32, i32* @SMU8_SCRATCH_ENTRY_UCODE_ID_POWER_PROFILING, align 4
  %136 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %137 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %140 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = call i64 @smu8_smu_populate_single_scratch_entry(%struct.pp_hwmgr* %134, i32 %135, i32 4, i32* %144)
  %146 = icmp ne i64 0, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %133
  %148 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %166

149:                                              ; preds = %133
  %150 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %151 = load i32, i32* @SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE, align 4
  %152 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %153 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %156 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  %161 = call i64 @smu8_smu_populate_single_scratch_entry(%struct.pp_hwmgr* %150, i32 %151, i32 4, i32* %160)
  %162 = icmp ne i64 0, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %149
  %164 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %166

165:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %193

166:                                              ; preds = %163, %147, %131, %114, %97
  %167 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %168 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %171 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %174 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = call i32 @amdgpu_bo_free_kernel(i32* %169, i32* %172, i32* %175)
  br label %177

177:                                              ; preds = %166, %81
  %178 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %179 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %182 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %185 = getelementptr inbounds %struct.smu8_smumgr, %struct.smu8_smumgr* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = call i32 @amdgpu_bo_free_kernel(i32* %180, i32* %183, i32* %186)
  br label %188

188:                                              ; preds = %177, %57
  %189 = load %struct.smu8_smumgr*, %struct.smu8_smumgr** %5, align 8
  %190 = call i32 @kfree(%struct.smu8_smumgr* %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %188, %165, %10
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.smu8_smumgr* @kzalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @smu8_smu_populate_single_scratch_entry(%struct.pp_hwmgr*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.smu8_smumgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
