; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_mm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_ttm.c_hibmc_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_drm_private = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_vram_mm = type { i32 }

@drm_gem_vram_mm_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error initializing VRAM MM; %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hibmc_mm_init(%struct.hibmc_drm_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hibmc_drm_private*, align 8
  %4 = alloca %struct.drm_vram_mm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %3, align 8
  %7 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %8 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_resource_start(i32 %13, i32 0)
  %15 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %3, align 8
  %16 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.drm_vram_mm* @drm_vram_helper_alloc_mm(%struct.drm_device* %10, i32 %14, i32 %17, i32* @drm_gem_vram_mm_funcs)
  store %struct.drm_vram_mm* %18, %struct.drm_vram_mm** %4, align 8
  %19 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %4, align 8
  %20 = call i64 @IS_ERR(%struct.drm_vram_mm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.drm_vram_mm* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.drm_vram_mm* @drm_vram_helper_alloc_mm(%struct.drm_device*, i32, i32, i32*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_vram_mm*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_vram_mm*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
