; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gp10b.c_gp10b_fifo_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gp10b.c_gp10b_fifo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo = type { i32 }

@gp10b_fifo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp10b_fifo_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_fifo** %2) #0 {
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fifo**, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_fifo** %2, %struct.nvkm_fifo*** %6, align 8
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.nvkm_fifo**, %struct.nvkm_fifo*** %6, align 8
  %10 = call i32 @gk104_fifo_new_(i32* @gp10b_fifo, %struct.nvkm_device* %7, i32 %8, i32 512, %struct.nvkm_fifo** %9)
  ret i32 %10
}

declare dso_local i32 @gk104_fifo_new_(i32*, %struct.nvkm_device*, i32, i32, %struct.nvkm_fifo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
