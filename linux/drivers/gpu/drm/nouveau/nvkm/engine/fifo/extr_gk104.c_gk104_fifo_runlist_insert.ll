; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_runlist_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_runlist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.gk104_fifo_chan = type { i64, i32, %struct.nvkm_fifo_cgrp* }
%struct.nvkm_fifo_cgrp = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk104_fifo_runlist_insert(%struct.gk104_fifo* %0, %struct.gk104_fifo_chan* %1) #0 {
  %3 = alloca %struct.gk104_fifo*, align 8
  %4 = alloca %struct.gk104_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_fifo_cgrp*, align 8
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %3, align 8
  store %struct.gk104_fifo_chan* %1, %struct.gk104_fifo_chan** %4, align 8
  %6 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %7 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %6, i32 0, i32 2
  %8 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %7, align 8
  store %struct.nvkm_fifo_cgrp* %8, %struct.nvkm_fifo_cgrp** %5, align 8
  %9 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %5, align 8
  %16 = icmp ne %struct.nvkm_fifo_cgrp* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %24, i32 0, i32 1
  %26 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %27 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %30 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @list_add_tail(i32* %25, i32* %33)
  br label %35

35:                                               ; preds = %23, %17
  %36 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %37 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %36, i32 0, i32 1
  %38 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  br label %53

41:                                               ; preds = %2
  %42 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %43 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %42, i32 0, i32 1
  %44 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %45 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %48 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @list_add_tail(i32* %43, i32* %51)
  br label %53

53:                                               ; preds = %41, %35
  %54 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %55 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
