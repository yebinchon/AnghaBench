; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_indirect_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_pbl_indirect_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pbl_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efa_dev*, %struct.pbl_context*)* @pbl_indirect_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pbl_indirect_terminate(%struct.efa_dev* %0, %struct.pbl_context* %1) #0 {
  %3 = alloca %struct.efa_dev*, align 8
  %4 = alloca %struct.pbl_context*, align 8
  store %struct.efa_dev* %0, %struct.efa_dev** %3, align 8
  store %struct.pbl_context* %1, %struct.pbl_context** %4, align 8
  %5 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %6 = load %struct.pbl_context*, %struct.pbl_context** %4, align 8
  %7 = call i32 @pbl_chunk_list_destroy(%struct.efa_dev* %5, %struct.pbl_context* %6)
  %8 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %9 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.pbl_context*, %struct.pbl_context** %4, align 8
  %13 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pbl_context*, %struct.pbl_context** %4, align 8
  %18 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @dma_unmap_sg(i32* %11, i32 %16, i32 %21, i32 %22)
  %24 = load %struct.pbl_context*, %struct.pbl_context** %4, align 8
  %25 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  ret void
}

declare dso_local i32 @pbl_chunk_list_destroy(%struct.efa_dev*, %struct.pbl_context*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
