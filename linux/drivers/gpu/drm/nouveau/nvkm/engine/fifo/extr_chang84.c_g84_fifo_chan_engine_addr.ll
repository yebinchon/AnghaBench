; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_engine_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chang84.c_g84_fifo_chan_engine_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*)* @g84_fifo_chan_engine_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g84_fifo_chan_engine_addr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_engine*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  %4 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %15 [
    i32 136, label %8
    i32 129, label %8
    i32 135, label %9
    i32 128, label %10
    i32 133, label %10
    i32 134, label %11
    i32 132, label %11
    i32 139, label %12
    i32 131, label %12
    i32 137, label %13
    i32 130, label %13
    i32 138, label %14
  ]

8:                                                ; preds = %1, %1
  store i32 -1, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  store i32 32, i32* %2, align 4
  br label %17

10:                                               ; preds = %1, %1
  store i32 64, i32* %2, align 4
  br label %17

11:                                               ; preds = %1, %1
  store i32 96, i32* %2, align 4
  br label %17

12:                                               ; preds = %1, %1
  store i32 128, i32* %2, align 4
  br label %17

13:                                               ; preds = %1, %1
  store i32 160, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  store i32 192, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = call i32 @WARN_ON(i32 1)
  store i32 -1, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
