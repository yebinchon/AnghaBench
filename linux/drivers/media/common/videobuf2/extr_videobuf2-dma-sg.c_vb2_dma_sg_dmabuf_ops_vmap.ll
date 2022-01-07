; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_dmabuf_ops_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-sg.c_vb2_dma_sg_dmabuf_ops_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.vb2_dma_sg_buf* }
%struct.vb2_dma_sg_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_buf*)* @vb2_dma_sg_dmabuf_ops_vmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vb2_dma_sg_dmabuf_ops_vmap(%struct.dma_buf* %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  %3 = alloca %struct.vb2_dma_sg_buf*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %2, align 8
  %4 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %5 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %4, i32 0, i32 0
  %6 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %5, align 8
  store %struct.vb2_dma_sg_buf* %6, %struct.vb2_dma_sg_buf** %3, align 8
  %7 = load %struct.vb2_dma_sg_buf*, %struct.vb2_dma_sg_buf** %3, align 8
  %8 = call i8* @vb2_dma_sg_vaddr(%struct.vb2_dma_sg_buf* %7)
  ret i8* %8
}

declare dso_local i8* @vb2_dma_sg_vaddr(%struct.vb2_dma_sg_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
