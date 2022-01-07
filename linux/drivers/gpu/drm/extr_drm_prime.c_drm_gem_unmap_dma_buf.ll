; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_unmap_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_unmap_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf_attachment = type { i32 }
%struct.sg_table = type { i32, i32 }

@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_unmap_dma_buf(%struct.dma_buf_attachment* %0, %struct.sg_table* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.sg_table*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store %struct.sg_table* %1, %struct.sg_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %8 = icmp ne %struct.sg_table* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %27

10:                                               ; preds = %3
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %15 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %18 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %22 = call i32 @dma_unmap_sg_attrs(i32 %13, i32 %16, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %24 = call i32 @sg_free_table(%struct.sg_table* %23)
  %25 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %26 = call i32 @kfree(%struct.sg_table* %25)
  br label %27

27:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dma_unmap_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
