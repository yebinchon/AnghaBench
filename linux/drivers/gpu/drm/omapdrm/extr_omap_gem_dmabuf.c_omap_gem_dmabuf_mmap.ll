; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_dmabuf_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_dmabuf_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.vm_area_struct*)* @omap_gem_dmabuf_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gem_dmabuf_mmap(%struct.dma_buf* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %8, i32 0, i32 0
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  store %struct.drm_gem_object* %10, %struct.drm_gem_object** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %13 = call i32 @omap_gem_mmap_size(%struct.drm_gem_object* %12)
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %15 = call i32 @drm_gem_mmap_obj(%struct.drm_gem_object* %11, i32 %13, %struct.vm_area_struct* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = call i32 @omap_gem_mmap_obj(%struct.drm_gem_object* %21, %struct.vm_area_struct* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @drm_gem_mmap_obj(%struct.drm_gem_object*, i32, %struct.vm_area_struct*) #1

declare dso_local i32 @omap_gem_mmap_size(%struct.drm_gem_object*) #1

declare dso_local i32 @omap_gem_mmap_obj(%struct.drm_gem_object*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
