; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk110.c_gk110_fifo_runlist_cgrp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk110.c_gk110_fifo_runlist_cgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_cgrp = type { i32, i32 }
%struct.nvkm_memory = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk110_fifo_runlist_cgrp(%struct.nvkm_fifo_cgrp* %0, %struct.nvkm_memory* %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_fifo_cgrp*, align 8
  %5 = alloca %struct.nvkm_memory*, align 8
  %6 = alloca i64, align 8
  store %struct.nvkm_fifo_cgrp* %0, %struct.nvkm_fifo_cgrp** %4, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = add nsw i64 %8, 0
  %10 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 26
  %14 = or i32 %13, 33554432
  %15 = or i32 %14, 49152
  %16 = or i32 %15, 8192
  %17 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = call i32 @nvkm_wo32(%struct.nvkm_memory* %7, i64 %9, i32 %20)
  %22 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @nvkm_wo32(%struct.nvkm_memory* %22, i64 %24, i32 0)
  ret void
}

declare dso_local i32 @nvkm_wo32(%struct.nvkm_memory*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
