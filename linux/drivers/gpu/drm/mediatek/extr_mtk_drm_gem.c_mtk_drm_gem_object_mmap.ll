; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_object_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_gem.c_mtk_drm_gem_object_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.mtk_drm_gem_obj = type { i32, i32, i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, %struct.vm_area_struct*)* @mtk_drm_gem_object_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_drm_gem_object_mmap(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_drm_gem_obj*, align 8
  %7 = alloca %struct.mtk_drm_private*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = call %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object* %8)
  store %struct.mtk_drm_gem_obj* %9, %struct.mtk_drm_gem_obj** %6, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %13, align 8
  store %struct.mtk_drm_private* %14, %struct.mtk_drm_private** %7, align 8
  %15 = load i32, i32* @VM_PFNMAP, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %7, align 8
  %22 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %6, align 8
  %26 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %32 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_mmap_attrs(i32 %23, %struct.vm_area_struct* %24, i32 %27, i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %42 = call i32 @drm_gem_vm_close(%struct.vm_area_struct* %41)
  br label %43

43:                                               ; preds = %40, %2
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_mmap_attrs(i32, %struct.vm_area_struct*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_gem_vm_close(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
