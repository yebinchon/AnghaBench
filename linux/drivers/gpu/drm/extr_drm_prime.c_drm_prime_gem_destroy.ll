; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_prime_gem_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_prime_gem_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.dma_buf_attachment* }
%struct.dma_buf_attachment = type { %struct.dma_buf* }
%struct.dma_buf = type { i32 }
%struct.sg_table = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_prime_gem_destroy(%struct.drm_gem_object* %0, %struct.sg_table* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.dma_buf*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.sg_table* %1, %struct.sg_table** %4, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 0
  %9 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %8, align 8
  store %struct.dma_buf_attachment* %9, %struct.dma_buf_attachment** %5, align 8
  %10 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %11 = icmp ne %struct.sg_table* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %14 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %15 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %16 = call i32 @dma_buf_unmap_attachment(%struct.dma_buf_attachment* %13, %struct.sg_table* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %19 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %18, i32 0, i32 0
  %20 = load %struct.dma_buf*, %struct.dma_buf** %19, align 8
  store %struct.dma_buf* %20, %struct.dma_buf** %6, align 8
  %21 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %22 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %21, i32 0, i32 0
  %23 = load %struct.dma_buf*, %struct.dma_buf** %22, align 8
  %24 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %25 = call i32 @dma_buf_detach(%struct.dma_buf* %23, %struct.dma_buf_attachment* %24)
  %26 = load %struct.dma_buf*, %struct.dma_buf** %6, align 8
  %27 = call i32 @dma_buf_put(%struct.dma_buf* %26)
  ret void
}

declare dso_local i32 @dma_buf_unmap_attachment(%struct.dma_buf_attachment*, %struct.sg_table*, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
