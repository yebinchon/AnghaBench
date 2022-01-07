; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_tu102.c_tu102_fifo_runlist_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_tu102.c_tu102_fifo_runlist_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_memory = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_fifo*, i32, %struct.nvkm_memory*, i32)* @tu102_fifo_runlist_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tu102_fifo_runlist_commit(%struct.gk104_fifo* %0, i32 %1, %struct.nvkm_memory* %2, i32 %3) #0 {
  %5 = alloca %struct.gk104_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_memory*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_memory* %2, %struct.nvkm_memory** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.gk104_fifo*, %struct.gk104_fifo** %5, align 8
  %12 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %9, align 8
  %17 = load %struct.nvkm_memory*, %struct.nvkm_memory** %7, align 8
  %18 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 16
  %22 = add nsw i32 11008, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @lower_32_bits(i32 %23)
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 %22, i32 %24)
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 11012, %28
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @upper_32_bits(i32 %30)
  %32 = call i32 @nvkm_wr32(%struct.nvkm_device* %26, i32 %29, i32 %31)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 16
  %36 = add nsw i32 11016, %35
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @nvkm_memory_addr(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
