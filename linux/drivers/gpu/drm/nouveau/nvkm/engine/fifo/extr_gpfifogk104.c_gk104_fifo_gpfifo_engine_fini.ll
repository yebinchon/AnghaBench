; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_engine_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_engine_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { i32 }
%struct.gk104_fifo_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_gpuobj* }
%struct.nvkm_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_engine*, i32)* @gk104_fifo_gpfifo_engine_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_fifo_gpfifo_engine_fini(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gk104_fifo_chan*, align 8
  %9 = alloca %struct.nvkm_gpuobj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %13 = call %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan* %12)
  store %struct.gk104_fifo_chan* %13, %struct.gk104_fifo_chan** %8, align 8
  %14 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %15 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %16, align 8
  store %struct.nvkm_gpuobj* %17, %struct.nvkm_gpuobj** %9, align 8
  %18 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %19 = call i32 @gk104_fifo_gpfifo_engine_addr(%struct.nvkm_engine* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %21 = call i32 @gk104_fifo_gpfifo_kick(%struct.gk104_fifo_chan* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %34 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %33)
  %35 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 65535
  %38 = add nsw i32 %37, 0
  %39 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %35, i32 %38, i32 0)
  %40 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, 4
  %44 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %40, i32 %43, i32 0)
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 16
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %32
  %49 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 0
  %52 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %49, i32 %51, i32 0)
  %53 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 4
  %56 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %53, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %48, %32
  %58 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %9, align 8
  %59 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %58)
  br label %60

60:                                               ; preds = %57, %29
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @gk104_fifo_gpfifo_engine_addr(%struct.nvkm_engine*) #1

declare dso_local i32 @gk104_fifo_gpfifo_kick(%struct.gk104_fifo_chan*) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
