; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_engine_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nv50_fifo_chan = type { i32, %struct.nvkm_gpuobj** }
%struct.nvkm_gpuobj = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_engine*)* @nv50_fifo_chan_engine_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_chan_engine_init(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_engine*, align 8
  %6 = alloca %struct.nv50_fifo_chan*, align 8
  %7 = alloca %struct.nvkm_gpuobj*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %4, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %5, align 8
  %11 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %12 = call %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan* %11)
  store %struct.nv50_fifo_chan* %12, %struct.nv50_fifo_chan** %6, align 8
  %13 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %14 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %13, i32 0, i32 1
  %15 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %14, align 8
  %16 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %15, i64 %19
  %21 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %20, align 8
  store %struct.nvkm_gpuobj* %21, %struct.nvkm_gpuobj** %7, align 8
  %22 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %23 = call i32 @nv50_fifo_chan_engine_addr(%struct.nvkm_engine* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

27:                                               ; preds = %2
  %28 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %29 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = sub nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  %36 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %7, align 8
  %37 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %40 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nvkm_kmap(i32 %41)
  %43 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %44 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 0
  %48 = call i32 @nvkm_wo32(i32 %45, i32 %47, i32 1638400)
  %49 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %50 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @lower_32_bits(i64 %54)
  %56 = call i32 @nvkm_wo32(i32 %51, i32 %53, i32 %55)
  %57 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %58 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @lower_32_bits(i64 %62)
  %64 = call i32 @nvkm_wo32(i32 %59, i32 %61, i32 %63)
  %65 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %66 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 12
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @upper_32_bits(i64 %70)
  %72 = shl i32 %71, 24
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @upper_32_bits(i64 %73)
  %75 = or i32 %72, %74
  %76 = call i32 @nvkm_wo32(i32 %67, i32 %69, i32 %75)
  %77 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %78 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 16
  %82 = call i32 @nvkm_wo32(i32 %79, i32 %81, i32 0)
  %83 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %84 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 20
  %88 = call i32 @nvkm_wo32(i32 %85, i32 %87, i32 0)
  %89 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %90 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @nvkm_done(i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %27, %26
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nv50_fifo_chan_engine_addr(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
