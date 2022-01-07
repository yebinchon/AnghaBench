; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_runlist_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_runlist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gk104_fifo_chan = type { i32, %struct.nvkm_fifo_cgrp* }
%struct.nvkm_fifo_cgrp = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk104_fifo_runlist_remove(%struct.gk104_fifo* %0, %struct.gk104_fifo_chan* %1) #0 {
  %3 = alloca %struct.gk104_fifo*, align 8
  %4 = alloca %struct.gk104_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_fifo_cgrp*, align 8
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %3, align 8
  store %struct.gk104_fifo_chan* %1, %struct.gk104_fifo_chan** %4, align 8
  %6 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %7 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %6, i32 0, i32 1
  %8 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %7, align 8
  store %struct.nvkm_fifo_cgrp* %8, %struct.nvkm_fifo_cgrp** %5, align 8
  %9 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %16 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %15, i32 0, i32 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %2
  %20 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %4, align 8
  %21 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %5, align 8
  %24 = icmp ne %struct.nvkm_fifo_cgrp* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %5, align 8
  %27 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load %struct.nvkm_fifo_cgrp*, %struct.nvkm_fifo_cgrp** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_fifo_cgrp, %struct.nvkm_fifo_cgrp* %32, i32 0, i32 0
  %34 = call i32 @list_del_init(i32* %33)
  br label %35

35:                                               ; preds = %31, %25, %19
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %38 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
