; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_gpfifo_engine_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_gpfifo_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.gf100_fifo_chan = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.nvkm_gpuobj* }
%struct.nvkm_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_engine*)* @gf100_fifo_gpfifo_engine_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_fifo_gpfifo_engine_init(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1) #0 {
  %3 = alloca %struct.nvkm_fifo_chan*, align 8
  %4 = alloca %struct.nvkm_engine*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gf100_fifo_chan*, align 8
  %7 = alloca %struct.nvkm_gpuobj*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %3, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %4, align 8
  %9 = load %struct.nvkm_engine*, %struct.nvkm_engine** %4, align 8
  %10 = call i64 @gf100_fifo_gpfifo_engine_addr(%struct.nvkm_engine* %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %12 = call %struct.gf100_fifo_chan* @gf100_fifo_chan(%struct.nvkm_fifo_chan* %11)
  store %struct.gf100_fifo_chan* %12, %struct.gf100_fifo_chan** %6, align 8
  %13 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %6, align 8
  %14 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %15, align 8
  store %struct.nvkm_gpuobj* %16, %struct.nvkm_gpuobj** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %6, align 8
  %21 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load %struct.nvkm_engine*, %struct.nvkm_engine** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %33 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %32)
  %34 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = or i32 %38, 4
  %40 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %34, i64 %36, i32 %39)
  %41 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @upper_32_bits(i32 %44)
  %46 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %41, i64 %43, i32 %45)
  %47 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %48 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %47)
  br label %49

49:                                               ; preds = %19, %2
  ret i32 0
}

declare dso_local i64 @gf100_fifo_gpfifo_engine_addr(%struct.nvkm_engine*) #1

declare dso_local %struct.gf100_fifo_chan* @gf100_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i64, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
