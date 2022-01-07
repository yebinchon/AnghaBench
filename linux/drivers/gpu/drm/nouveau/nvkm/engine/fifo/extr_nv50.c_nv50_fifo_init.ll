; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv50.c_nv50_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv50.c_nv50_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.nv50_fifo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_fifo_init(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca %struct.nvkm_fifo*, align 8
  %3 = alloca %struct.nv50_fifo*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %2, align 8
  %6 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %2, align 8
  %7 = call %struct.nv50_fifo* @nv50_fifo(%struct.nvkm_fifo* %6)
  store %struct.nv50_fifo* %7, %struct.nv50_fifo** %3, align 8
  %8 = load %struct.nv50_fifo*, %struct.nv50_fifo** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = call i32 @nvkm_mask(%struct.nvkm_device* %14, i32 512, i32 256, i32 0)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_mask(%struct.nvkm_device* %16, i32 512, i32 256, i32 256)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = call i32 @nvkm_wr32(%struct.nvkm_device* %18, i32 9484, i32 1866267700)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 8260, i32 16793599)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %23 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 8448, i32 -1)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 8512, i32 -1073741825)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %35, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 4
  %33 = add nsw i32 9728, %32
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %30, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %26

38:                                               ; preds = %26
  %39 = load %struct.nv50_fifo*, %struct.nv50_fifo** %3, align 8
  %40 = call i32 @nv50_fifo_runlist_update_locked(%struct.nv50_fifo* %39)
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %42 = call i32 @nvkm_wr32(%struct.nvkm_device* %41, i32 12800, i32 1)
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %43, i32 12880, i32 1)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %46 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 9472, i32 1)
  ret void
}

declare dso_local %struct.nv50_fifo* @nv50_fifo(%struct.nvkm_fifo*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv50_fifo_runlist_update_locked(%struct.nv50_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
