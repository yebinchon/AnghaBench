; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogv100.c_gv100_fifo_gpfifo_engine_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogv100.c_gv100_fifo_gpfifo_engine_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo_chan = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk104_fifo_chan*, i32, i32)* @gv100_fifo_gpfifo_engine_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv100_fifo_gpfifo_engine_valid(%struct.gk104_fifo_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gk104_fifo_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gk104_fifo_chan* %0, %struct.gk104_fifo_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %13 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %7, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 1
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 131072, i32 65536
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %10, align 4
  %32 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %33 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %36 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %37 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @BIT(i32 %38)
  %40 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %41 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @BIT(i32 %42)
  %44 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 9776, i32 %39, i32 %43)
  %45 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %46 = call i32 @gk104_fifo_gpfifo_kick_locked(%struct.gk104_fifo_chan* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %30
  %50 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %51 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nvkm_kmap(i32 %53)
  %55 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %56 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @nvkm_mo32(i32 %58, i32 172, i32 %59, i32 %60)
  %62 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %63 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @nvkm_done(i32 %65)
  br label %67

67:                                               ; preds = %49, %30
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %69 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %70 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @BIT(i32 %71)
  %73 = call i32 @nvkm_mask(%struct.nvkm_device* %68, i32 9776, i32 %72, i32 0)
  %74 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %75 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gk104_fifo_gpfifo_kick_locked(%struct.gk104_fifo_chan*) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_mo32(i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
