; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv50.c_nv50_sw_chan_mthd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv50.c_nv50_sw_chan_mthd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sw_chan = type { i32 }
%struct.nv50_sw_chan = type { %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.nvkm_engine* }
%struct.nvkm_engine = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_sw_chan*, i32, i32, i32)* @nv50_sw_chan_mthd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_sw_chan_mthd(%struct.nvkm_sw_chan* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_sw_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv50_sw_chan*, align 8
  %11 = alloca %struct.nvkm_engine*, align 8
  %12 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_sw_chan* %0, %struct.nvkm_sw_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %6, align 8
  %14 = call %struct.nv50_sw_chan* @nv50_sw_chan(%struct.nvkm_sw_chan* %13)
  store %struct.nv50_sw_chan* %14, %struct.nv50_sw_chan** %10, align 8
  %15 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %16 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_engine*, %struct.nvkm_engine** %18, align 8
  store %struct.nvkm_engine* %19, %struct.nvkm_engine** %11, align 8
  %20 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %21 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %12, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %59 [
    i32 396, label %25
    i32 1024, label %30
    i32 1028, label %35
    i32 1032, label %40
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %28 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  store i32 1, i32* %5, align 4
  br label %61

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %33 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  store i32 1, i32* %5, align 4
  br label %61

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %38 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  store i32 1, i32* %5, align 4
  br label %61

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %43 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %41, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %51 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @nvkm_notify_get(i32* %56)
  store i32 1, i32* %5, align 4
  br label %61

58:                                               ; preds = %40
  br label %60

59:                                               ; preds = %4
  br label %60

60:                                               ; preds = %59, %58
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %49, %35, %30, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.nv50_sw_chan* @nv50_sw_chan(%struct.nvkm_sw_chan*) #1

declare dso_local i32 @nvkm_notify_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
