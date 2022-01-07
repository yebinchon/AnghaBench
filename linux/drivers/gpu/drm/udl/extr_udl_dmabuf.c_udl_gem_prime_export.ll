; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_gem_prime_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_gem_prime_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.drm_gem_object*, i32, i32* }
%struct.drm_gem_object = type { i32, i32 }
%struct.dma_buf = type { i32 }

@exp_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@udl_dmabuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @udl_gem_prime_export(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 @exp_info)
  store i32* @udl_dmabuf_ops, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 3), align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 2), align 8
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 0), align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  store %struct.drm_gem_object* %10, %struct.drm_gem_object** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 1), align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dma_buf* @drm_gem_dmabuf_export(i32 %13, %struct.TYPE_4__* @exp_info)
  ret %struct.dma_buf* %14
}

declare dso_local i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local %struct.dma_buf* @drm_gem_dmabuf_export(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
