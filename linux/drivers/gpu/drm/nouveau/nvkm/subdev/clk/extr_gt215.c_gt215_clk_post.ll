; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gt215.c_gt215_clk_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_fifo* }
%struct.nvkm_fifo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gt215_clk_post(%struct.nvkm_clk* %0, i64* %1) #0 {
  %3 = alloca %struct.nvkm_clk*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_fifo*, align 8
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.nvkm_clk*, %struct.nvkm_clk** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %5, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %11, i32 0, i32 0
  %13 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %12, align 8
  store %struct.nvkm_fifo* %13, %struct.nvkm_fifo** %6, align 8
  %14 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %6, align 8
  %15 = icmp ne %struct.nvkm_fifo* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i64*, i64** %4, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %6, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = call i32 @nvkm_fifo_start(%struct.nvkm_fifo* %20, i64* %21)
  br label %23

23:                                               ; preds = %19, %16, %2
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = call i32 @nvkm_mask(%struct.nvkm_device* %24, i32 9476, i32 1, i32 0)
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = call i32 @nvkm_mask(%struct.nvkm_device* %26, i32 131168, i32 458752, i32 262144)
  ret void
}

declare dso_local i32 @nvkm_fifo_start(%struct.nvkm_fifo*, i64*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
