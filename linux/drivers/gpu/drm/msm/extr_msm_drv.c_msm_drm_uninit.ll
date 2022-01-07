; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_drm_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_drm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private*, i64 }
%struct.msm_drm_private = type { i32, i32, %struct.TYPE_7__, i64, %struct.TYPE_5__*, %struct.msm_mdss*, %struct.msm_kms* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.msm_mdss = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.drm_device*)* }
%struct.msm_kms = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.msm_kms*)* }

@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@fbdev = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @msm_drm_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_drm_uninit(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.msm_kms*, align 8
  %7 = alloca %struct.msm_mdss*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.drm_device* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  store %struct.msm_drm_private* %16, %struct.msm_drm_private** %5, align 8
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %18 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %17, i32 0, i32 6
  %19 = load %struct.msm_kms*, %struct.msm_kms** %18, align 8
  store %struct.msm_kms* %19, %struct.msm_kms** %6, align 8
  %20 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %21 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %20, i32 0, i32 5
  %22 = load %struct.msm_mdss*, %struct.msm_mdss** %21, align 8
  store %struct.msm_mdss* %22, %struct.msm_mdss** %7, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i32 @drm_dev_unregister(%struct.drm_device* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %31 = call i32 @drm_atomic_helper_shutdown(%struct.drm_device* %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %34 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @flush_workqueue(i32 %35)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %70, %32
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %40 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %37
  %44 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %45 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %44, i32 0, i32 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %43
  %54 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %55 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @kthread_destroy_worker(i32* %60)
  %62 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %63 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %53, %43
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %37

73:                                               ; preds = %37
  %74 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %75 = call i32 @msm_gem_shrinker_cleanup(%struct.drm_device* %74)
  %76 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %77 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %76)
  %78 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %79 = call i32 @msm_perf_debugfs_cleanup(%struct.msm_drm_private* %78)
  %80 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %81 = call i32 @msm_rd_debugfs_cleanup(%struct.msm_drm_private* %80)
  %82 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %83 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %82)
  %84 = load %struct.device*, %struct.device** %2, align 8
  %85 = call i32 @pm_runtime_get_sync(%struct.device* %84)
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = call i32 @drm_irq_uninstall(%struct.drm_device* %86)
  %88 = load %struct.device*, %struct.device** %2, align 8
  %89 = call i32 @pm_runtime_put_sync(%struct.device* %88)
  %90 = load %struct.msm_kms*, %struct.msm_kms** %6, align 8
  %91 = icmp ne %struct.msm_kms* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %73
  %93 = load %struct.msm_kms*, %struct.msm_kms** %6, align 8
  %94 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp ne %struct.TYPE_6__* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.msm_kms*, %struct.msm_kms** %6, align 8
  %99 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %101, align 8
  %103 = load %struct.msm_kms*, %struct.msm_kms** %6, align 8
  %104 = call i32 %102(%struct.msm_kms* %103)
  br label %105

105:                                              ; preds = %97, %92, %73
  %106 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %107 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  store i64 %112, i64* %9, align 8
  %113 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %114 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = call i32 @drm_mm_takedown(i32* %115)
  %117 = load %struct.device*, %struct.device** %2, align 8
  %118 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %119 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %123 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @dma_free_attrs(%struct.device* %117, i32 %121, i32* null, i64 %125, i64 %126)
  br label %128

128:                                              ; preds = %111, %105
  %129 = load %struct.device*, %struct.device** %2, align 8
  %130 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %131 = call i32 @component_unbind_all(%struct.device* %129, %struct.drm_device* %130)
  %132 = load %struct.msm_mdss*, %struct.msm_mdss** %7, align 8
  %133 = icmp ne %struct.msm_mdss* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %128
  %135 = load %struct.msm_mdss*, %struct.msm_mdss** %7, align 8
  %136 = getelementptr inbounds %struct.msm_mdss, %struct.msm_mdss* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = icmp ne %struct.TYPE_8__* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.msm_mdss*, %struct.msm_mdss** %7, align 8
  %141 = getelementptr inbounds %struct.msm_mdss, %struct.msm_mdss* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %143, align 8
  %145 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %146 = call i32 %144(%struct.drm_device* %145)
  br label %147

147:                                              ; preds = %139, %134, %128
  %148 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %149 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %148, i32 0, i32 0
  store %struct.msm_drm_private* null, %struct.msm_drm_private** %149, align 8
  %150 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %151 = call i32 @drm_dev_put(%struct.drm_device* %150)
  %152 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %153 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @destroy_workqueue(i32 %154)
  %156 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %157 = call i32 @kfree(%struct.msm_drm_private* %156)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.drm_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @drm_dev_unregister(%struct.drm_device*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(%struct.drm_device*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @kthread_destroy_worker(i32*) #1

declare dso_local i32 @msm_gem_shrinker_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @msm_perf_debugfs_cleanup(%struct.msm_drm_private*) #1

declare dso_local i32 @msm_rd_debugfs_cleanup(%struct.msm_drm_private*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

declare dso_local i32 @dma_free_attrs(%struct.device*, i32, i32*, i64, i64) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.msm_drm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
