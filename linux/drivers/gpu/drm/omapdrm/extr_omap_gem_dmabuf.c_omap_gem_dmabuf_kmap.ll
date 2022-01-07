; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_dmabuf_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_dmabuf_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_buf*, i64)* @omap_gem_dmabuf_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @omap_gem_dmabuf_kmap(%struct.dma_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.page**, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %8 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %7, i32 0, i32 0
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %9, %struct.drm_gem_object** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %11 = call i32 @omap_gem_get_pages(%struct.drm_gem_object* %10, %struct.page*** %6, i32 0)
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @omap_gem_cpu_sync_page(%struct.drm_gem_object* %12, i64 %13)
  %15 = load %struct.page**, %struct.page*** %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %16
  %18 = load %struct.page*, %struct.page** %17, align 8
  %19 = call i8* @kmap(%struct.page* %18)
  ret i8* %19
}

declare dso_local i32 @omap_gem_get_pages(%struct.drm_gem_object*, %struct.page***, i32) #1

declare dso_local i32 @omap_gem_cpu_sync_page(%struct.drm_gem_object*, i64) #1

declare dso_local i8* @kmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
