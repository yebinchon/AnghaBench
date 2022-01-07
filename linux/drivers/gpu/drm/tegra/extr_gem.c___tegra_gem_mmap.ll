; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c___tegra_gem_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c___tegra_gem_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i32, i32 }
%struct.tegra_bo = type { i32, i32, i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tegra_gem_mmap(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.tegra_bo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %11 = call %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object* %10)
  store %struct.tegra_bo* %11, %struct.tegra_bo** %6, align 8
  %12 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %13 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %2
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* @VM_PFNMAP, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %29 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %35 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_mmap_wc(i32 %32, %struct.vm_area_struct* %33, i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %16
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = call i32 @drm_gem_vm_close(%struct.vm_area_struct* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %16
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %74

54:                                               ; preds = %2
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @vm_get_page_prot(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @VM_MIXEDMAP, align 4
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @VM_PFNMAP, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @pgprot_writecombine(i32 %70)
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %54, %50
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.tegra_bo* @to_tegra_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_mmap_wc(i32, %struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local i32 @drm_gem_vm_close(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
