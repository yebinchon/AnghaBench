; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_enable_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_enable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { %struct.panfrost_perfcnt*, i32, i32 }
%struct.panfrost_perfcnt = type { %struct.drm_gem_shmem_object*, %struct.TYPE_5__*, %struct.panfrost_file_priv*, i32, i32 }
%struct.drm_gem_shmem_object = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.panfrost_file_priv = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@GPU_INT_CLEAR = common dso_local global i32 0, align 4
@GPU_IRQ_CLEAN_CACHES_COMPLETED = common dso_local global i32 0, align 4
@GPU_IRQ_PERFCNT_SAMPLE_COMPLETED = common dso_local global i32 0, align 4
@GPU_CMD = common dso_local global i32 0, align 4
@GPU_CMD_PERFCNT_CLEAR = common dso_local global i32 0, align 4
@GPU_CMD_CLEAN_INV_CACHES = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GPU_PERFCNT_CFG_MODE_MANUAL = common dso_local global i32 0, align 4
@GPU_PRFCNT_JM_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_SHADER_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_MMU_L2_EN = common dso_local global i32 0, align 4
@HW_ISSUE_8186 = common dso_local global i32 0, align 4
@GPU_PRFCNT_TILER_EN = common dso_local global i32 0, align 4
@GPU_PERFCNT_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panfrost_device*, %struct.panfrost_file_priv*, i32)* @panfrost_perfcnt_enable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_perfcnt_enable_locked(%struct.panfrost_device* %0, %struct.panfrost_file_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca %struct.panfrost_file_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.panfrost_perfcnt*, align 8
  %9 = alloca %struct.drm_gem_shmem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %5, align 8
  store %struct.panfrost_file_priv* %1, %struct.panfrost_file_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %13 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %12, i32 0, i32 0
  %14 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %13, align 8
  store %struct.panfrost_perfcnt* %14, %struct.panfrost_perfcnt** %8, align 8
  %15 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %6, align 8
  %16 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %17 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %16, i32 0, i32 2
  %18 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %17, align 8
  %19 = icmp eq %struct.panfrost_file_priv* %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %180

21:                                               ; preds = %3
  %22 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %23 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %22, i32 0, i32 2
  %24 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %23, align 8
  %25 = icmp ne %struct.panfrost_file_priv* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %180

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %32 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_get_sync(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %180

39:                                               ; preds = %30
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %41 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %44 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.drm_gem_shmem_object* @drm_gem_shmem_create(i32 %42, i32 %45)
  store %struct.drm_gem_shmem_object* %46, %struct.drm_gem_shmem_object** %9, align 8
  %47 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %9, align 8
  %48 = call i64 @IS_ERR(%struct.drm_gem_shmem_object* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %9, align 8
  %52 = call i32 @PTR_ERR(%struct.drm_gem_shmem_object* %51)
  store i32 %52, i32* %4, align 4
  br label %180

53:                                               ; preds = %39
  %54 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %9, align 8
  %55 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %54, i32 0, i32 0
  %56 = call %struct.TYPE_5__* @to_panfrost_bo(i32* %55)
  %57 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %58 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %57, i32 0, i32 1
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %60 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @panfrost_mmu_map(%struct.TYPE_5__* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %175

66:                                               ; preds = %53
  %67 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %9, align 8
  %68 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %67, i32 0, i32 0
  %69 = call %struct.drm_gem_shmem_object* @drm_gem_shmem_vmap(i32* %68)
  %70 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %71 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %70, i32 0, i32 0
  store %struct.drm_gem_shmem_object* %69, %struct.drm_gem_shmem_object** %71, align 8
  %72 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %73 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %72, i32 0, i32 0
  %74 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %73, align 8
  %75 = call i64 @IS_ERR(%struct.drm_gem_shmem_object* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %79 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %78, i32 0, i32 0
  %80 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.drm_gem_shmem_object* %80)
  store i32 %81, i32* %11, align 4
  br label %175

82:                                               ; preds = %66
  %83 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %84 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %83, i32 0, i32 0
  %85 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %84, align 8
  %86 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %85, i32 0, i32 3
  %87 = call i32 @reinit_completion(i32* %86)
  %88 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %89 = load i32, i32* @GPU_INT_CLEAR, align 4
  %90 = load i32, i32* @GPU_IRQ_CLEAN_CACHES_COMPLETED, align 4
  %91 = load i32, i32* @GPU_IRQ_PERFCNT_SAMPLE_COMPLETED, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @gpu_write(%struct.panfrost_device* %88, i32 %89, i32 %92)
  %94 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %95 = load i32, i32* @GPU_CMD, align 4
  %96 = load i32, i32* @GPU_CMD_PERFCNT_CLEAR, align 4
  %97 = call i32 @gpu_write(%struct.panfrost_device* %94, i32 %95, i32 %96)
  %98 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %99 = load i32, i32* @GPU_CMD, align 4
  %100 = load i32, i32* @GPU_CMD_CLEAN_INV_CACHES, align 4
  %101 = call i32 @gpu_write(%struct.panfrost_device* %98, i32 %99, i32 %100)
  %102 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %103 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %102, i32 0, i32 0
  %104 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %103, align 8
  %105 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %104, i32 0, i32 3
  %106 = call i32 @msecs_to_jiffies(i32 1000)
  %107 = call i32 @wait_for_completion_timeout(i32* %105, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %82
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %165

113:                                              ; preds = %82
  %114 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %6, align 8
  %115 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %116 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %115, i32 0, i32 2
  store %struct.panfrost_file_priv* %114, %struct.panfrost_file_priv** %116, align 8
  %117 = call i32 @GPU_PERFCNT_CFG_AS(i32 0)
  %118 = load i32, i32* @GPU_PERFCNT_CFG_MODE_MANUAL, align 4
  %119 = call i32 @GPU_PERFCNT_CFG_MODE(i32 %118)
  %120 = or i32 %117, %119
  store i32 %120, i32* %10, align 4
  %121 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %122 = call i64 @panfrost_model_is_bifrost(%struct.panfrost_device* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @GPU_PERFCNT_CFG_SETSEL(i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %124, %113
  %130 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %131 = load i32, i32* @GPU_PRFCNT_JM_EN, align 4
  %132 = call i32 @gpu_write(%struct.panfrost_device* %130, i32 %131, i32 -1)
  %133 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %134 = load i32, i32* @GPU_PRFCNT_SHADER_EN, align 4
  %135 = call i32 @gpu_write(%struct.panfrost_device* %133, i32 %134, i32 -1)
  %136 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %137 = load i32, i32* @GPU_PRFCNT_MMU_L2_EN, align 4
  %138 = call i32 @gpu_write(%struct.panfrost_device* %136, i32 %137, i32 -1)
  %139 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %140 = load i32, i32* @HW_ISSUE_8186, align 4
  %141 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %129
  %144 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %145 = load i32, i32* @GPU_PRFCNT_TILER_EN, align 4
  %146 = call i32 @gpu_write(%struct.panfrost_device* %144, i32 %145, i32 0)
  br label %151

147:                                              ; preds = %129
  %148 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %149 = load i32, i32* @GPU_PRFCNT_TILER_EN, align 4
  %150 = call i32 @gpu_write(%struct.panfrost_device* %148, i32 %149, i32 -1)
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %153 = load i32, i32* @GPU_PERFCNT_CFG, align 4
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @gpu_write(%struct.panfrost_device* %152, i32 %153, i32 %154)
  %156 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %157 = load i32, i32* @HW_ISSUE_8186, align 4
  %158 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %151
  %161 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %162 = load i32, i32* @GPU_PRFCNT_TILER_EN, align 4
  %163 = call i32 @gpu_write(%struct.panfrost_device* %161, i32 %162, i32 -1)
  br label %164

164:                                              ; preds = %160, %151
  store i32 0, i32* %4, align 4
  br label %180

165:                                              ; preds = %110
  %166 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %167 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %166, i32 0, i32 1
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  %172 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %171, i32 0, i32 0
  %173 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %172, align 8
  %174 = call i32 @drm_gem_shmem_vunmap(i32* %170, %struct.drm_gem_shmem_object* %173)
  br label %175

175:                                              ; preds = %165, %77, %65
  %176 = load %struct.drm_gem_shmem_object*, %struct.drm_gem_shmem_object** %9, align 8
  %177 = getelementptr inbounds %struct.drm_gem_shmem_object, %struct.drm_gem_shmem_object* %176, i32 0, i32 0
  %178 = call i32 @drm_gem_object_put_unlocked(i32* %177)
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %175, %164, %50, %37, %26, %20
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.drm_gem_shmem_object* @drm_gem_shmem_create(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_shmem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_shmem_object*) #1

declare dso_local %struct.TYPE_5__* @to_panfrost_bo(i32*) #1

declare dso_local i32 @panfrost_mmu_map(%struct.TYPE_5__*) #1

declare dso_local %struct.drm_gem_shmem_object* @drm_gem_shmem_vmap(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @GPU_PERFCNT_CFG_AS(i32) #1

declare dso_local i32 @GPU_PERFCNT_CFG_MODE(i32) #1

declare dso_local i64 @panfrost_model_is_bifrost(%struct.panfrost_device*) #1

declare dso_local i32 @GPU_PERFCNT_CFG_SETSEL(i32) #1

declare dso_local i64 @panfrost_has_hw_issue(%struct.panfrost_device*, i32) #1

declare dso_local i32 @drm_gem_shmem_vunmap(i32*, %struct.drm_gem_shmem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
