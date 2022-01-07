; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_dmabuf_begin_cpu_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem_dmabuf.c_omap_gem_dmabuf_begin_cpu_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.page = type { i32 }

@OMAP_BO_TILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, i32)* @omap_gem_dmabuf_begin_cpu_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_gem_dmabuf_begin_cpu_access(%struct.dma_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.page**, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %9 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %8, i32 0, i32 0
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  store %struct.drm_gem_object* %10, %struct.drm_gem_object** %6, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %12 = call i32 @omap_gem_flags(%struct.drm_gem_object* %11)
  %13 = load i32, i32* @OMAP_BO_TILED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %21 = call i32 @omap_gem_get_pages(%struct.drm_gem_object* %20, %struct.page*** %7, i32 1)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @omap_gem_flags(%struct.drm_gem_object*) #1

declare dso_local i32 @omap_gem_get_pages(%struct.drm_gem_object*, %struct.page***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
