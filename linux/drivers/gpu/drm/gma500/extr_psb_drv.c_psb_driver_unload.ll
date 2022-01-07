; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_drv.c_psb_driver_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_drv.c_psb_driver_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, %struct.psb_gtt, i32*, %struct.TYPE_2__*, i64 }
%struct.psb_gtt = type { i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*)* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @psb_driver_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_driver_unload(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.psb_gtt*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %6, align 8
  store %struct.drm_psb_private* %7, %struct.drm_psb_private** %3, align 8
  %8 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %9 = icmp ne %struct.drm_psb_private* %8, null
  br i1 %9, label %10, label %151

10:                                               ; preds = %1
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call i32 @gma_backlight_exit(%struct.drm_device* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = call i32 @psb_modeset_cleanup(%struct.drm_device* %19)
  %21 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %22 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %21, i32 0, i32 10
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.drm_device*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %28, i32 0, i32 10
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %31, align 8
  %33 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %34 = call i32 %32(%struct.drm_device* %33)
  br label %35

35:                                               ; preds = %27, %18
  %36 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %37 = call i32 @psb_intel_opregion_fini(%struct.drm_device* %36)
  %38 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %44 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %43, i32 0, i32 9
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @psb_mmu_free_pagedir(i32* %45)
  %47 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %48 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %47, i32 0, i32 9
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %49
  %55 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %56 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %55, i32 0, i32 8
  store %struct.psb_gtt* %56, %struct.psb_gtt** %4, align 8
  %57 = load %struct.psb_gtt*, %struct.psb_gtt** %4, align 8
  %58 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %57, i32 0, i32 0
  %59 = call i32 @down_read(i32* %58)
  %60 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @psb_mmu_get_default_pd(i32* %62)
  %64 = load %struct.psb_gtt*, %struct.psb_gtt** %4, align 8
  %65 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %68 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PAGE_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = call i32 @psb_mmu_remove_pfn_sequence(i32 %63, i32 %66, i32 %71)
  %73 = load %struct.psb_gtt*, %struct.psb_gtt** %4, align 8
  %74 = getelementptr inbounds %struct.psb_gtt, %struct.psb_gtt* %73, i32 0, i32 0
  %75 = call i32 @up_read(i32* %74)
  %76 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %77 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @psb_mmu_driver_takedown(i32* %78)
  %80 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %81 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %80, i32 0, i32 7
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %54, %49
  %83 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %84 = call i32 @psb_gtt_takedown(%struct.drm_device* %83)
  %85 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %86 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @set_pages_wb(i32* %92, i32 1)
  %94 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %95 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @__free_page(i32* %96)
  %98 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %99 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %98, i32 0, i32 6
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %89, %82
  %101 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %102 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %107 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @iounmap(i32* %108)
  %110 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %111 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %110, i32 0, i32 5
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %105, %100
  %113 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %114 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %119 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @iounmap(i32* %120)
  %122 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %123 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %122, i32 0, i32 4
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %117, %112
  %125 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %126 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %131 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @iounmap(i32* %132)
  %134 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %135 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %134, i32 0, i32 3
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %129, %124
  %137 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %138 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @pci_dev_put(i32 %139)
  %141 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %142 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pci_dev_put(i32 %143)
  %145 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %146 = call i32 @psb_intel_destroy_bios(%struct.drm_device* %145)
  %147 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %148 = call i32 @kfree(%struct.drm_psb_private* %147)
  %149 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %150 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %149, i32 0, i32 0
  store %struct.drm_psb_private* null, %struct.drm_psb_private** %150, align 8
  br label %151

151:                                              ; preds = %136, %1
  %152 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %153 = call i32 @gma_power_uninit(%struct.drm_device* %152)
  ret void
}

declare dso_local i32 @gma_backlight_exit(%struct.drm_device*) #1

declare dso_local i32 @psb_modeset_cleanup(%struct.drm_device*) #1

declare dso_local i32 @psb_intel_opregion_fini(%struct.drm_device*) #1

declare dso_local i32 @psb_mmu_free_pagedir(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @psb_mmu_remove_pfn_sequence(i32, i32, i32) #1

declare dso_local i32 @psb_mmu_get_default_pd(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @psb_mmu_driver_takedown(i32*) #1

declare dso_local i32 @psb_gtt_takedown(%struct.drm_device*) #1

declare dso_local i32 @set_pages_wb(i32*, i32) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @psb_intel_destroy_bios(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.drm_psb_private*) #1

declare dso_local i32 @gma_power_uninit(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
