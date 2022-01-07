; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_disable_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_disable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, %struct.panfrost_perfcnt* }
%struct.panfrost_perfcnt = type { %struct.TYPE_4__*, i32*, %struct.panfrost_file_priv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.panfrost_file_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPU_PRFCNT_JM_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_SHADER_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_MMU_L2_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_TILER_EN = common dso_local global i32 0, align 4
@GPU_PERFCNT_CFG = common dso_local global i32 0, align 4
@GPU_PERFCNT_CFG_MODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panfrost_device*, %struct.panfrost_file_priv*)* @panfrost_perfcnt_disable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_perfcnt_disable_locked(%struct.panfrost_device* %0, %struct.panfrost_file_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.panfrost_device*, align 8
  %5 = alloca %struct.panfrost_file_priv*, align 8
  %6 = alloca %struct.panfrost_perfcnt*, align 8
  store %struct.panfrost_device* %0, %struct.panfrost_device** %4, align 8
  store %struct.panfrost_file_priv* %1, %struct.panfrost_file_priv** %5, align 8
  %7 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %8 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %7, i32 0, i32 1
  %9 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %8, align 8
  store %struct.panfrost_perfcnt* %9, %struct.panfrost_perfcnt** %6, align 8
  %10 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %5, align 8
  %11 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %6, align 8
  %12 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %11, i32 0, i32 2
  %13 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %12, align 8
  %14 = icmp ne %struct.panfrost_file_priv* %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %20 = load i32, i32* @GPU_PRFCNT_JM_EN, align 4
  %21 = call i32 @gpu_write(%struct.panfrost_device* %19, i32 %20, i32 0)
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %23 = load i32, i32* @GPU_PRFCNT_SHADER_EN, align 4
  %24 = call i32 @gpu_write(%struct.panfrost_device* %22, i32 %23, i32 0)
  %25 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %26 = load i32, i32* @GPU_PRFCNT_MMU_L2_EN, align 4
  %27 = call i32 @gpu_write(%struct.panfrost_device* %25, i32 %26, i32 0)
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %29 = load i32, i32* @GPU_PRFCNT_TILER_EN, align 4
  %30 = call i32 @gpu_write(%struct.panfrost_device* %28, i32 %29, i32 0)
  %31 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %32 = load i32, i32* @GPU_PERFCNT_CFG, align 4
  %33 = load i32, i32* @GPU_PERFCNT_CFG_MODE_OFF, align 4
  %34 = call i32 @GPU_PERFCNT_CFG_MODE(i32 %33)
  %35 = call i32 @gpu_write(%struct.panfrost_device* %31, i32 %32, i32 %34)
  %36 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %6, align 8
  %37 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %36, i32 0, i32 2
  store %struct.panfrost_file_priv* null, %struct.panfrost_file_priv** %37, align 8
  %38 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %6, align 8
  %39 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %6, align 8
  %44 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @drm_gem_shmem_vunmap(i32* %42, i32* %45)
  %47 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %6, align 8
  %48 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %6, align 8
  %50 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @drm_gem_object_put_unlocked(i32* %53)
  %55 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %6, align 8
  %56 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %55, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %58 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pm_runtime_mark_last_busy(i32 %59)
  %61 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %62 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pm_runtime_put_autosuspend(i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %18, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @GPU_PERFCNT_CFG_MODE(i32) #1

declare dso_local i32 @drm_gem_shmem_vunmap(i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
