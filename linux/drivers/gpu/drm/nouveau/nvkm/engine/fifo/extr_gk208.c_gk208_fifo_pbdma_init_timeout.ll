; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk208.c_gk208_fifo_pbdma_init_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk208.c_gk208_fifo_pbdma_init_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk208_fifo_pbdma_init_timeout(%struct.gk104_fifo* %0) #0 {
  %2 = alloca %struct.gk104_fifo*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %2, align 8
  %5 = load %struct.gk104_fifo*, %struct.gk104_fifo** %2, align 8
  %6 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.gk104_fifo*, %struct.gk104_fifo** %2, align 8
  %14 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 8192
  %21 = add nsw i32 262444, %20
  %22 = call i32 @nvkm_wr32(%struct.nvkm_device* %18, i32 %21, i32 65535)
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %11

26:                                               ; preds = %11
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
