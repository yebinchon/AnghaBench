; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_runlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_runlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_fifo*)* @gk104_fifo_intr_runlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_fifo_intr_runlist(%struct.gk104_fifo* %0) #0 {
  %2 = alloca %struct.gk104_fifo*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %2, align 8
  %6 = load %struct.gk104_fifo*, %struct.gk104_fifo** %2, align 8
  %7 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %3, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = call i32 @nvkm_rd32(%struct.nvkm_device* %12, i32 10752)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %17, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @__ffs(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.gk104_fifo*, %struct.gk104_fifo** %2, align 8
  %21 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @wake_up(i32* %26)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 10752, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %14

37:                                               ; preds = %14
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
