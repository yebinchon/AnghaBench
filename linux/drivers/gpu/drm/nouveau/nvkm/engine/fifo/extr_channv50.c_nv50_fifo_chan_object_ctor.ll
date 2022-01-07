; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_object_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_channv50.c_nv50_fifo_chan_object_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_object = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nv50_fifo_chan = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_object*)* @nv50_fifo_chan_object_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fifo_chan_object_ctor(%struct.nvkm_fifo_chan* %0, %struct.nvkm_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca %struct.nv50_fifo_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %4, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %5, align 8
  %9 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %10 = call %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan* %9)
  store %struct.nv50_fifo_chan* %10, %struct.nv50_fifo_chan** %6, align 8
  %11 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %23 [
    i32 131, label %20
    i32 128, label %20
    i32 130, label %21
    i32 129, label %22
  ]

20:                                               ; preds = %2, %2
  store i32 0, i32* %8, align 4
  br label %27

21:                                               ; preds = %2
  store i32 1048576, i32* %8, align 4
  br label %27

22:                                               ; preds = %2
  store i32 2097152, i32* %8, align 4
  br label %27

23:                                               ; preds = %2
  %24 = call i32 @WARN_ON(i32 1)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %22, %21, %20
  %28 = load %struct.nv50_fifo_chan*, %struct.nv50_fifo_chan** %6, align 8
  %29 = getelementptr inbounds %struct.nv50_fifo_chan, %struct.nv50_fifo_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @nvkm_ramht_insert(i32 %30, %struct.nvkm_object* %31, i32 0, i32 4, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.nv50_fifo_chan* @nv50_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_ramht_insert(i32, %struct.nvkm_object*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
