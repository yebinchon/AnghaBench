; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_ttm.c_mgag200_mm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_ttm.c_mgag200_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i32, %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_vram_mm = type { i32 }

@drm_gem_vram_mm_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error initializing VRAM MM; %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgag200_mm_init(%struct.mga_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mga_device*, align 8
  %4 = alloca %struct.drm_vram_mm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  store %struct.mga_device* %0, %struct.mga_device** %3, align 8
  %7 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %8 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_resource_start(i32 %13, i32 0)
  %15 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %16 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_vram_mm* @drm_vram_helper_alloc_mm(%struct.drm_device* %10, i32 %14, i32 %18, i32* @drm_gem_vram_mm_funcs)
  store %struct.drm_vram_mm* %19, %struct.drm_vram_mm** %4, align 8
  %20 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %4, align 8
  %21 = call i64 @IS_ERR(%struct.drm_vram_mm* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.drm_vram_mm* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %1
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pci_resource_start(i32 %32, i32 0)
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_resource_len(i32 %36, i32 0)
  %38 = call i32 @arch_io_reserve_memtype_wc(i32 %33, i32 %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pci_resource_start(i32 %41, i32 0)
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_resource_len(i32 %45, i32 0)
  %47 = call i32 @arch_phys_wc_add(i32 %42, i32 %46)
  %48 = load %struct.mga_device*, %struct.mga_device** %3, align 8
  %49 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %29, %23
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.drm_vram_mm* @drm_vram_helper_alloc_mm(%struct.drm_device*, i32, i32, i32*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_vram_mm*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_vram_mm*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @arch_io_reserve_memtype_wc(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @arch_phys_wc_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
