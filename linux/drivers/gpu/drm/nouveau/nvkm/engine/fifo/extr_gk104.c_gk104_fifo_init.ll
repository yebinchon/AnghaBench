; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.gk104_fifo = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.gk104_fifo*)*, i32 (%struct.gk104_fifo*)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo*)* @gk104_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_fifo_init(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca %struct.nvkm_fifo*, align 8
  %3 = alloca %struct.gk104_fifo*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %2, align 8
  %6 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %2, align 8
  %7 = call %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo* %6)
  store %struct.gk104_fifo* %7, %struct.gk104_fifo** %3, align 8
  %8 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %9 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %15 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32 (%struct.gk104_fifo*)*, i32 (%struct.gk104_fifo*)** %19, align 8
  %21 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %22 = call i32 %20(%struct.gk104_fifo* %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %45, %1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %26 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 8192
  %33 = add nsw i32 262460, %32
  %34 = call i32 @nvkm_mask(%struct.nvkm_device* %30, i32 %33, i32 268435712, i32 0)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 8192
  %38 = add nsw i32 262408, %37
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %35, i32 %38, i32 -1)
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 8192
  %43 = add nsw i32 262412, %42
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %40, i32 %43, i32 -257)
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %23

48:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %52 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %57, 8192
  %59 = add nsw i32 262472, %58
  %60 = call i32 @nvkm_wr32(%struct.nvkm_device* %56, i32 %59, i32 -1)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 8192
  %64 = add nsw i32 262476, %63
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 %64, i32 -1)
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %49

69:                                               ; preds = %49
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %71 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %72 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 12
  %78 = or i32 268435456, %77
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 8788, i32 %78)
  %80 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %81 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32 (%struct.gk104_fifo*)*, i32 (%struct.gk104_fifo*)** %85, align 8
  %87 = icmp ne i32 (%struct.gk104_fifo*)* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %69
  %89 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %90 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32 (%struct.gk104_fifo*)*, i32 (%struct.gk104_fifo*)** %94, align 8
  %96 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %97 = call i32 %95(%struct.gk104_fifo* %96)
  br label %98

98:                                               ; preds = %88, %69
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 8448, i32 -1)
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %101, i32 8512, i32 2147483647)
  ret void
}

declare dso_local %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
