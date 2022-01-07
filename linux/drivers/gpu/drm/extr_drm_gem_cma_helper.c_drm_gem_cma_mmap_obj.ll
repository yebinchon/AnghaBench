; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_mmap_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem_cma_helper.c_drm_gem_cma_mmap_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_cma_object = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_cma_object*, %struct.vm_area_struct*)* @drm_gem_cma_mmap_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gem_cma_mmap_obj(%struct.drm_gem_cma_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.drm_gem_cma_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gem_cma_object* %0, %struct.drm_gem_cma_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load i32, i32* @VM_PFNMAP, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %22 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %3, align 8
  %25 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = call i32 @dma_mmap_wc(i32 %19, %struct.vm_area_struct* %20, i32 %23, i32 %26, i64 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = call i32 @drm_gem_vm_close(%struct.vm_area_struct* %38)
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @dma_mmap_wc(i32, %struct.vm_area_struct*, i32, i32, i64) #1

declare dso_local i32 @drm_gem_vm_close(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
