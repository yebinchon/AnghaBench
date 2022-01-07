; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_ttm.c_ast_mm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_ttm.c_ast_mm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_vram_mm = type { i32 }

@drm_gem_vram_mm_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error initializing VRAM MM; %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ast_mm_init(%struct.ast_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca %struct.drm_vram_mm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  %7 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %8 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_resource_start(i32 %13, i32 0)
  %15 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %16 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
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
  br label %49

28:                                               ; preds = %1
  %29 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_resource_start(i32 %31, i32 0)
  %33 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pci_resource_len(i32 %35, i32 0)
  %37 = call i32 @arch_io_reserve_memtype_wc(i32 %32, i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_resource_start(i32 %40, i32 0)
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_resource_len(i32 %44, i32 0)
  %46 = call i32 @arch_phys_wc_add(i32 %41, i32 %45)
  %47 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %48 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %28, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
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
