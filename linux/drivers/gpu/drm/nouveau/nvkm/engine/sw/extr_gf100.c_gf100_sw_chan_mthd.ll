; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_gf100.c_gf100_sw_chan_mthd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_gf100.c_gf100_sw_chan_mthd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sw_chan = type { i32 }
%struct.nv50_sw_chan = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_engine* }
%struct.nvkm_engine = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_sw_chan*, i32, i32, i32)* @gf100_sw_chan_mthd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_sw_chan_mthd(%struct.nvkm_sw_chan* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_engine*, %struct.nvkm_engine** %18, align 8
  store %struct.nvkm_engine* %19, %struct.nvkm_engine** %11, align 8
  %20 = load %struct.nvkm_engine*, %struct.nvkm_engine** %11, align 8
  %21 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %12, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %95 [
    i32 1024, label %25
    i32 1028, label %40
    i32 1032, label %54
    i32 1036, label %59
    i32 1536, label %78
    i32 1604, label %82
    i32 1708, label %91
  ]

25:                                               ; preds = %4
  %26 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %27 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 4294967295
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 32
  %35 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %36 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 8
  store i32 1, i32* %5, align 4
  br label %97

40:                                               ; preds = %4
  %41 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %42 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 1095216660480
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %50 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  store i32 1, i32* %5, align 4
  br label %97

54:                                               ; preds = %4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %57 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  store i32 1, i32* %5, align 4
  br label %97

59:                                               ; preds = %4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %62 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %60, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load %struct.nv50_sw_chan*, %struct.nv50_sw_chan** %10, align 8
  %70 = getelementptr inbounds %struct.nv50_sw_chan, %struct.nv50_sw_chan* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @nvkm_notify_get(i32* %75)
  store i32 1, i32* %5, align 4
  br label %97

77:                                               ; preds = %59
  br label %96

78:                                               ; preds = %4
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @nvkm_wr32(%struct.nvkm_device* %79, i32 4300288, i32 %80)
  store i32 1, i32* %5, align 4
  br label %97

82:                                               ; preds = %4
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, -2097151
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @nvkm_wr32(%struct.nvkm_device* %87, i32 4300356, i32 %88)
  store i32 1, i32* %5, align 4
  br label %97

90:                                               ; preds = %82
  br label %96

91:                                               ; preds = %4
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @nvkm_wr32(%struct.nvkm_device* %92, i32 4300460, i32 %93)
  store i32 1, i32* %5, align 4
  br label %97

95:                                               ; preds = %4
  br label %96

96:                                               ; preds = %95, %90, %77
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %91, %86, %78, %68, %54, %40, %25
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.nv50_sw_chan* @nv50_sw_chan(%struct.nvkm_sw_chan*) #1

declare dso_local i32 @nvkm_notify_get(i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
