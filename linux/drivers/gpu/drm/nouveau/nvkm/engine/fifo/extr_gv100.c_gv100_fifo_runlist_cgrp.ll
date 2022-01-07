; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gv100.c_gv100_fifo_runlist_cgrp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gv100.c_gv100_fifo_runlist_cgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_cgrp = type { i32, i32 }
%struct.nvkm_memory = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv100_fifo_runlist_cgrp(%struct.nvkm_fifo_cgrp* %0, %struct.nvkm_memory* %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_fifo_cgrp*, align 8
  %5 = alloca %struct.nvkm_memory*, align 8
  %6 = alloca i64, align 8
  store %struct.nvkm_fifo_cgrp* %0, %struct.nvkm_fifo_cgrp** %4, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = add nsw i64 %8, 0
  %10 = call i32 @nvkm_wo32(%struct.nvkm_memory* %7, i64 %9, i32 -2147287039)
  %11 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %12, 4
  %14 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nvkm_wo32(%struct.nvkm_memory* %11, i64 %13, i32 %16)
  %18 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = add nsw i64 %19, 8
  %21 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %4, align 8
  %22 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nvkm_wo32(%struct.nvkm_memory* %18, i64 %20, i32 %23)
  %25 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, 12
  %28 = call i32 @nvkm_wo32(%struct.nvkm_memory* %25, i64 %27, i32 0)
  ret void
}

declare dso_local i32 @nvkm_wo32(%struct.nvkm_memory*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
