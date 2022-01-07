; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_fifo = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.nvkm_engine, i32 }
%struct.nvkm_engine = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i64, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.gf100_fifo_chan = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s engine fault on channel %d, recovering...\0A\00", align 1
@nvkm_subdev_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_fifo*, %struct.nvkm_engine*, %struct.gf100_fifo_chan*)* @gf100_fifo_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_recover(%struct.gf100_fifo* %0, %struct.nvkm_engine* %1, %struct.gf100_fifo_chan* %2) #0 {
  %4 = alloca %struct.gf100_fifo*, align 8
  %5 = alloca %struct.nvkm_engine*, align 8
  %6 = alloca %struct.gf100_fifo_chan*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.gf100_fifo* %0, %struct.gf100_fifo** %4, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %5, align 8
  store %struct.gf100_fifo_chan* %2, %struct.gf100_fifo_chan** %6, align 8
  %10 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %11 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %7, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 1
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %8, align 8
  %17 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %6, align 8
  %18 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %22 = load i32*, i32** @nvkm_subdev_name, align 8
  %23 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @nvkm_error(%struct.nvkm_subdev* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %32 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call i32 @assert_spin_locked(i32* %33)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 8
  %38 = add nsw i32 12292, %37
  %39 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 %38, i32 1, i32 0)
  %40 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %6, align 8
  %41 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %40, i32 0, i32 1
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %6, align 8
  %44 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %46 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %47 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = icmp ne %struct.nvkm_engine* %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %3
  %51 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %52 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = shl i64 1, %54
  %56 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %57 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %55
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %50, %3
  %62 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %63 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = call i32 @schedule_work(i32* %64)
  %66 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %67 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %66, i32 0, i32 0
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @nvkm_fifo_kevent(%struct.TYPE_6__* %67, i32 %68)
  ret void
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nvkm_fifo_kevent(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
