; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nvkm_fault_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_fifo_fault(%struct.nvkm_fifo* %0, %struct.nvkm_fault_data* %1) #0 {
  %3 = alloca %struct.nvkm_fifo*, align 8
  %4 = alloca %struct.nvkm_fault_data*, align 8
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %3, align 8
  store %struct.nvkm_fault_data* %1, %struct.nvkm_fault_data** %4, align 8
  %5 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to void (%struct.nvkm_fifo*, %struct.nvkm_fault_data*)**
  %10 = load void (%struct.nvkm_fifo*, %struct.nvkm_fault_data*)*, void (%struct.nvkm_fifo*, %struct.nvkm_fault_data*)** %9, align 8
  %11 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %12 = load %struct.nvkm_fault_data*, %struct.nvkm_fault_data** %4, align 8
  call void %10(%struct.nvkm_fifo* %11, %struct.nvkm_fault_data* %12)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
