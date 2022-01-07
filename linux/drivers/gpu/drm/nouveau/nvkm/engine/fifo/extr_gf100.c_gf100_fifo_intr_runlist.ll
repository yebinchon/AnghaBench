; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_runlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_runlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_fifo = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"RUNLIST %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_fifo*)* @gf100_fifo_intr_runlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_intr_runlist(%struct.gf100_fifo* %0) #0 {
  %2 = alloca %struct.gf100_fifo*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gf100_fifo* %0, %struct.gf100_fifo** %2, align 8
  %6 = load %struct.gf100_fifo*, %struct.gf100_fifo** %2, align 8
  %7 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %3, align 8
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 10752)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 268435456
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.gf100_fifo*, %struct.gf100_fifo** %2, align 8
  %20 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @wake_up(i32* %21)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %24 = call i32 @nvkm_wr32(%struct.nvkm_device* %23, i32 10752, i32 268435456)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, -268435457
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %18, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nvkm_error(%struct.nvkm_subdev* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 10752, i32 %35)
  br label %37

37:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
