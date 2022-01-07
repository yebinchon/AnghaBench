; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_engine_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_engine_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.gk104_fifo_chan = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk104_fifo_gpfifo_engine_ctor(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1, %struct.nvkm_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_engine*, align 8
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca %struct.gk104_fifo_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %6, align 8
  store %struct.nvkm_object* %2, %struct.nvkm_object** %7, align 8
  %11 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %12 = call %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan* %11)
  store %struct.gk104_fifo_chan* %12, %struct.gk104_fifo_chan** %8, align 8
  %13 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %18 = call i32 @gk104_fifo_gpfifo_engine_addr(%struct.nvkm_engine* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %23 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %24 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = call i32 @nvkm_object_bind(%struct.nvkm_object* %22, i32* null, i32 0, %struct.TYPE_9__** %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %84

35:                                               ; preds = %21
  %36 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %37 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %41 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %51 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @nvkm_vmm_get(i32 %39, i32 12, i32 %49, i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %35
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %84

62:                                               ; preds = %35
  %63 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %64 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %72 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %8, align 8
  %76 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @nvkm_memory_map(%struct.TYPE_9__* %70, i32 0, i32 %74, i32 %82, i32* null, i32 0)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %62, %60, %33, %20
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @gk104_fifo_gpfifo_engine_addr(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_object_bind(%struct.nvkm_object*, i32*, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @nvkm_vmm_get(i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_memory_map(%struct.TYPE_9__*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
