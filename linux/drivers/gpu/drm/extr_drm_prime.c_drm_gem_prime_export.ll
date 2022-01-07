; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.drm_gem_object = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dma_buf_export_info = type { i32, i32, %struct.drm_gem_object*, i32, i32*, i32, i32 }

@drm_gem_prime_dmabuf_ops = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @drm_gem_prime_export(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.dma_buf_export_info, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  %10 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %6, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %6, i32 0, i32 1
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %6, i32 0, i32 2
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %16, align 8
  %18 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %6, i32 0, i32 3
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %6, i32 0, i32 4
  store i32* @drm_gem_prime_dmabuf_ops, i32** %22, align 8
  %23 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %6, i32 0, i32 5
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %23, align 8
  %31 = getelementptr inbounds %struct.dma_buf_export_info, %struct.dma_buf_export_info* %6, i32 0, i32 6
  %32 = load i32, i32* @KBUILD_MODNAME, align 4
  store i32 %32, i32* %31, align 4
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = call %struct.dma_buf* @drm_gem_dmabuf_export(%struct.drm_device* %33, %struct.dma_buf_export_info* %6)
  ret %struct.dma_buf* %34
}

declare dso_local %struct.dma_buf* @drm_gem_dmabuf_export(%struct.drm_device*, %struct.dma_buf_export_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
