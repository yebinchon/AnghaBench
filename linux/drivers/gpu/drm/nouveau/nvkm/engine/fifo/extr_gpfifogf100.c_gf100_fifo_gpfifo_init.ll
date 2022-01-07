; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_gpfifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_gpfifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.gf100_fifo_chan = type { i32, i32, %struct.TYPE_8__, %struct.gf100_fifo* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.gf100_fifo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo_chan*)* @gf100_fifo_gpfifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_gpfifo_init(%struct.nvkm_fifo_chan* %0) #0 {
  %2 = alloca %struct.nvkm_fifo_chan*, align 8
  %3 = alloca %struct.gf100_fifo_chan*, align 8
  %4 = alloca %struct.gf100_fifo*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %2, align 8
  %8 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %2, align 8
  %9 = call %struct.gf100_fifo_chan* @gf100_fifo_chan(%struct.nvkm_fifo_chan* %8)
  store %struct.gf100_fifo_chan* %9, %struct.gf100_fifo_chan** %3, align 8
  %10 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %11 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %10, i32 0, i32 3
  %12 = load %struct.gf100_fifo*, %struct.gf100_fifo** %11, align 8
  store %struct.gf100_fifo* %12, %struct.gf100_fifo** %4, align 8
  %13 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %14 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %5, align 8
  %19 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %20 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 12
  store i32 %25, i32* %6, align 4
  %26 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %27 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 12288, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 -1073741824, %34
  %36 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %33, i32 %35)
  %37 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %38 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %37, i32 0, i32 1
  %39 = call i64 @list_empty(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %1
  %42 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %43 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %48 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %49 = call i32 @gf100_fifo_runlist_insert(%struct.gf100_fifo* %47, %struct.gf100_fifo_chan* %48)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 12292, %51
  %53 = call i32 @nvkm_wr32(%struct.nvkm_device* %50, i32 %52, i32 2031617)
  %54 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %55 = call i32 @gf100_fifo_runlist_commit(%struct.gf100_fifo* %54)
  br label %56

56:                                               ; preds = %46, %41, %1
  ret void
}

declare dso_local %struct.gf100_fifo_chan* @gf100_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @gf100_fifo_runlist_insert(%struct.gf100_fifo*, %struct.gf100_fifo_chan*) #1

declare dso_local i32 @gf100_fifo_runlist_commit(%struct.gf100_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
