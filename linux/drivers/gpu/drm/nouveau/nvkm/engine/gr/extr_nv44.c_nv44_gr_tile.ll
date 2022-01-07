; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv44.c_nv44_gr_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv44.c_nv44_gr_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nvkm_fb_tile = type { i32, i32, i32 }
%struct.nv40_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_fifo* }
%struct.nvkm_fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)* @nv44_gr_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_gr_tile(%struct.nvkm_gr* %0, i32 %1, %struct.nvkm_fb_tile* %2) #0 {
  %4 = alloca %struct.nvkm_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fb_tile*, align 8
  %7 = alloca %struct.nv40_gr*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca %struct.nvkm_fifo*, align 8
  %10 = alloca i64, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_fb_tile* %2, %struct.nvkm_fb_tile** %6, align 8
  %11 = load %struct.nvkm_gr*, %struct.nvkm_gr** %4, align 8
  %12 = call %struct.nv40_gr* @nv40_gr(%struct.nvkm_gr* %11)
  store %struct.nv40_gr* %12, %struct.nv40_gr** %7, align 8
  %13 = load %struct.nv40_gr*, %struct.nv40_gr** %7, align 8
  %14 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %8, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 1
  %21 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %20, align 8
  store %struct.nvkm_fifo* %21, %struct.nvkm_fifo** %9, align 8
  %22 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %9, align 8
  %23 = call i32 @nvkm_fifo_pause(%struct.nvkm_fifo* %22, i64* %10)
  %24 = load %struct.nv40_gr*, %struct.nv40_gr** %7, align 8
  %25 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %24, i32 0, i32 0
  %26 = call i32 @nv04_gr_idle(%struct.TYPE_6__* %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %138 [
    i32 68, label %30
    i32 74, label %30
    i32 70, label %52
    i32 76, label %52
    i32 99, label %52
    i32 103, label %52
    i32 104, label %52
    i32 78, label %95
  ]

30:                                               ; preds = %3, %3
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @NV20_PGRAPH_TSIZE(i32 %32)
  %34 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %35 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %33, i32 %36)
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @NV20_PGRAPH_TLIMIT(i32 %39)
  %41 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %38, i32 %40, i32 %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @NV20_PGRAPH_TILE(i32 %46)
  %48 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %49 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %47, i32 %50)
  br label %140

52:                                               ; preds = %3, %3, %3, %3, %3
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @NV47_PGRAPH_TSIZE(i32 %54)
  %56 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %57 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 %55, i32 %58)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @NV47_PGRAPH_TLIMIT(i32 %61)
  %63 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %64 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 %62, i32 %65)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @NV47_PGRAPH_TILE(i32 %68)
  %70 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %71 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 %69, i32 %72)
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @NV40_PGRAPH_TSIZE1(i32 %75)
  %77 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %78 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %74, i32 %76, i32 %79)
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @NV40_PGRAPH_TLIMIT1(i32 %82)
  %84 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %85 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 %83, i32 %86)
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @NV40_PGRAPH_TILE1(i32 %89)
  %91 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %92 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 %90, i32 %93)
  br label %140

95:                                               ; preds = %3
  %96 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @NV20_PGRAPH_TSIZE(i32 %97)
  %99 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %100 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %96, i32 %98, i32 %101)
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @NV20_PGRAPH_TLIMIT(i32 %104)
  %106 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %107 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @nvkm_wr32(%struct.nvkm_device* %103, i32 %105, i32 %108)
  %110 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @NV20_PGRAPH_TILE(i32 %111)
  %113 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %114 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @nvkm_wr32(%struct.nvkm_device* %110, i32 %112, i32 %115)
  %117 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @NV40_PGRAPH_TSIZE1(i32 %118)
  %120 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %121 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @nvkm_wr32(%struct.nvkm_device* %117, i32 %119, i32 %122)
  %124 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @NV40_PGRAPH_TLIMIT1(i32 %125)
  %127 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %128 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @nvkm_wr32(%struct.nvkm_device* %124, i32 %126, i32 %129)
  %131 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @NV40_PGRAPH_TILE1(i32 %132)
  %134 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %135 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @nvkm_wr32(%struct.nvkm_device* %131, i32 %133, i32 %136)
  br label %140

138:                                              ; preds = %3
  %139 = call i32 @WARN_ON(i32 1)
  br label %140

140:                                              ; preds = %138, %95, %52, %30
  %141 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %9, align 8
  %142 = call i32 @nvkm_fifo_start(%struct.nvkm_fifo* %141, i64* %10)
  ret void
}

declare dso_local %struct.nv40_gr* @nv40_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_fifo_pause(%struct.nvkm_fifo*, i64*) #1

declare dso_local i32 @nv04_gr_idle(%struct.TYPE_6__*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @NV20_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV20_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV20_PGRAPH_TILE(i32) #1

declare dso_local i32 @NV47_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV47_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV47_PGRAPH_TILE(i32) #1

declare dso_local i32 @NV40_PGRAPH_TSIZE1(i32) #1

declare dso_local i32 @NV40_PGRAPH_TLIMIT1(i32) #1

declare dso_local i32 @NV40_PGRAPH_TILE1(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_fifo_start(%struct.nvkm_fifo*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
