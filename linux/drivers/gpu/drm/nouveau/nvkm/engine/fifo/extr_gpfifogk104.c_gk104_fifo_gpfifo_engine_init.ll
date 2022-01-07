; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_engine_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.gk104_fifo_chan = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.nvkm_gpuobj* }
%struct.nvkm_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_engine*)* @gk104_fifo_gpfifo_engine_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_fifo_gpfifo_engine_init(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1) #0 {
  %3 = alloca %struct.nvkm_fifo_chan*, align 8
  %4 = alloca %struct.nvkm_engine*, align 8
  %5 = alloca %struct.gk104_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %3, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %4, align 8
  %11 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %3, align 8
  %12 = call %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan* %11)
  store %struct.gk104_fifo_chan* %12, %struct.gk104_fifo_chan** %5, align 8
  %13 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %5, align 8
  %14 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %15, align 8
  store %struct.nvkm_gpuobj* %16, %struct.nvkm_gpuobj** %6, align 8
  %17 = load %struct.nvkm_engine*, %struct.nvkm_engine** %4, align 8
  %18 = call i32 @gk104_fifo_gpfifo_engine_addr(%struct.nvkm_engine* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %2
  %22 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %5, align 8
  %23 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.nvkm_engine*, %struct.nvkm_engine** %4, align 8
  %26 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @lower_32_bits(i32 %34)
  %36 = or i32 %35, 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @upper_32_bits(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %40 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %39)
  %41 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, 0
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %41, i32 %44, i32 %45)
  %47 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %47, i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 16
  store i32 %54, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %21
  %57 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %57, i32 %59, i32 %60)
  %62 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %62, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %21
  %68 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %69 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %68)
  br label %70

70:                                               ; preds = %67, %2
  ret i32 0
}

declare dso_local %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @gk104_fifo_gpfifo_engine_addr(%struct.nvkm_engine*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
