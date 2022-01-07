; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_driver_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_driver_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vmw_private = type { i32, i32*, %struct.TYPE_2__, i32, i32, i64, i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }

@VMW_PL_GMR = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@VMW_PL_MOB = common dso_local global i32 0, align 4
@SVGA_CAP_IRQMASK = common dso_local global i32 0, align 4
@vmw_res_context = common dso_local global i32 0, align 4
@vmw_res_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @vmw_driver_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_driver_unload(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %5)
  store %struct.vmw_private* %6, %struct.vmw_private** %3, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 12
  %9 = call i32 @unregister_pm_notifier(i32* %8)
  %10 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %17 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @drm_ht_remove(i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @vfree(i32 %24)
  %26 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %27 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %26, i32 0, i32 11
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %32 = call i32 @vmw_fb_off(%struct.vmw_private* %31)
  %33 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %34 = call i32 @vmw_fb_close(%struct.vmw_private* %33)
  %35 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %36 = call i32 @vmw_fifo_resource_dec(%struct.vmw_private* %35)
  %37 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %38 = call i32 @vmw_svga_disable(%struct.vmw_private* %37)
  br label %39

39:                                               ; preds = %30, %20
  %40 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %41 = call i32 @vmw_kms_close(%struct.vmw_private* %40)
  %42 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %43 = call i32 @vmw_overlay_close(%struct.vmw_private* %42)
  %44 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %45 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %50 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %49, i32 0, i32 8
  %51 = load i32, i32* @VMW_PL_GMR, align 4
  %52 = call i32 @ttm_bo_clean_mm(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %39
  %54 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %55 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %54, i32 0, i32 8
  %56 = load i32, i32* @TTM_PL_VRAM, align 4
  %57 = call i32 @ttm_bo_clean_mm(i32* %55, i32 %56)
  %58 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %59 = call i32 @vmw_release_device_early(%struct.vmw_private* %58)
  %60 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %61 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %66 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %65, i32 0, i32 8
  %67 = load i32, i32* @VMW_PL_MOB, align 4
  %68 = call i32 @ttm_bo_clean_mm(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %53
  %70 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %71 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %70, i32 0, i32 8
  %72 = call i32 @ttm_bo_device_release(i32* %71)
  %73 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %74 = call i32 @vmw_release_device_late(%struct.vmw_private* %73)
  %75 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %76 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @vmw_fence_manager_takedown(i32 %77)
  %79 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %80 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SVGA_CAP_IRQMASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %69
  %86 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %87 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @vmw_irq_uninstall(i32 %88)
  br label %90

90:                                               ; preds = %85, %69
  %91 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %92 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %97 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pci_release_region(i32 %98, i32 2)
  br label %105

100:                                              ; preds = %90
  %101 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pci_release_regions(i32 %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %107 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %106, i32 0, i32 4
  %108 = call i32 @ttm_object_device_release(i32* %107)
  %109 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %110 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @memunmap(i32 %111)
  %113 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %114 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %105
  %119 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %120 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @vmw_binding_state_free(i64 %122)
  br label %124

124:                                              ; preds = %118, %105
  %125 = load i32, i32* @vmw_res_context, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %138, %124
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @vmw_res_max, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %132 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @idr_destroy(i32* %136)
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %4, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %126

141:                                              ; preds = %126
  %142 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %143 = call i32 @kfree(%struct.vmw_private* %142)
  ret void
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @drm_ht_remove(i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @vmw_fb_off(%struct.vmw_private*) #1

declare dso_local i32 @vmw_fb_close(%struct.vmw_private*) #1

declare dso_local i32 @vmw_fifo_resource_dec(%struct.vmw_private*) #1

declare dso_local i32 @vmw_svga_disable(%struct.vmw_private*) #1

declare dso_local i32 @vmw_kms_close(%struct.vmw_private*) #1

declare dso_local i32 @vmw_overlay_close(%struct.vmw_private*) #1

declare dso_local i32 @ttm_bo_clean_mm(i32*, i32) #1

declare dso_local i32 @vmw_release_device_early(%struct.vmw_private*) #1

declare dso_local i32 @ttm_bo_device_release(i32*) #1

declare dso_local i32 @vmw_release_device_late(%struct.vmw_private*) #1

declare dso_local i32 @vmw_fence_manager_takedown(i32) #1

declare dso_local i32 @vmw_irq_uninstall(i32) #1

declare dso_local i32 @pci_release_region(i32, i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @ttm_object_device_release(i32*) #1

declare dso_local i32 @memunmap(i32) #1

declare dso_local i32 @vmw_binding_state_free(i64) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
