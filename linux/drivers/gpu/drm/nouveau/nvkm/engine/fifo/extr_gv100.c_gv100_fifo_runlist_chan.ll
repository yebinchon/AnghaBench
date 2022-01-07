; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gv100.c_gv100_fifo_runlist_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gv100.c_gv100_fifo_runlist_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo_chan = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_memory* }
%struct.nvkm_memory = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv100_fifo_runlist_chan(%struct.gk104_fifo_chan* %0, %struct.nvkm_memory* %1, i64 %2) #0 {
  %4 = alloca %struct.gk104_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_memory*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nvkm_memory*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gk104_fifo_chan* %0, %struct.gk104_fifo_chan** %4, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %11 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_memory*, %struct.nvkm_memory** %14, align 8
  store %struct.nvkm_memory* %15, %struct.nvkm_memory** %7, align 8
  %16 = load %struct.nvkm_memory*, %struct.nvkm_memory** %7, align 8
  %17 = call i64 @nvkm_memory_addr(%struct.nvkm_memory* %16)
  %18 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %19 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 512
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %17, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %26 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @lower_32_bits(i64 %34)
  %36 = call i32 @nvkm_wo32(%struct.nvkm_memory* %31, i64 %33, i32 %35)
  %37 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @upper_32_bits(i64 %40)
  %42 = call i32 @nvkm_wo32(%struct.nvkm_memory* %37, i64 %39, i32 %41)
  %43 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @lower_32_bits(i64 %46)
  %48 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %49 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %47, %51
  %53 = call i32 @nvkm_wo32(%struct.nvkm_memory* %43, i64 %45, i32 %52)
  %54 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 12
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @upper_32_bits(i64 %57)
  %59 = call i32 @nvkm_wo32(%struct.nvkm_memory* %54, i64 %56, i32 %58)
  ret void
}

declare dso_local i64 @nvkm_memory_addr(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_memory*, i64, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
