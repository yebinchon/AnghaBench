; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nvkm_fb_tile = type { i32, i32, i32, i32 }
%struct.nv40_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_fifo* }
%struct.nvkm_fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_gr*, i32, %struct.nvkm_fb_tile*)* @nv40_gr_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_gr_tile(%struct.nvkm_gr* %0, i32 %1, %struct.nvkm_fb_tile* %2) #0 {
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
  switch i32 %29, label %165 [
    i32 64, label %30
    i32 65, label %30
    i32 66, label %30
    i32 67, label %30
    i32 69, label %30
    i32 71, label %108
    i32 73, label %108
    i32 75, label %108
  ]

30:                                               ; preds = %3, %3, %3, %3, %3
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @NV20_PGRAPH_TSIZE(i32 %32)
  %34 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %35 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %31, i32 %33, i32 %36)
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @NV20_PGRAPH_TLIMIT(i32 %39)
  %41 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %38, i32 %40, i32 %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @NV20_PGRAPH_TILE(i32 %46)
  %48 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %49 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %47, i32 %50)
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @NV40_PGRAPH_TSIZE1(i32 %53)
  %55 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %56 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nvkm_wr32(%struct.nvkm_device* %52, i32 %54, i32 %57)
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @NV40_PGRAPH_TLIMIT1(i32 %60)
  %62 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %63 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %59, i32 %61, i32 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @NV40_PGRAPH_TILE1(i32 %67)
  %69 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %70 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nvkm_wr32(%struct.nvkm_device* %66, i32 %68, i32 %71)
  %73 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %74 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %106 [
    i32 64, label %76
    i32 69, label %76
    i32 65, label %91
    i32 66, label %91
    i32 67, label %91
  ]

76:                                               ; preds = %30, %30
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @NV20_PGRAPH_ZCOMP(i32 %78)
  %80 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %81 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @nvkm_wr32(%struct.nvkm_device* %77, i32 %79, i32 %82)
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @NV40_PGRAPH_ZCOMP1(i32 %85)
  %87 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %88 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nvkm_wr32(%struct.nvkm_device* %84, i32 %86, i32 %89)
  br label %107

91:                                               ; preds = %30, %30, %30
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @NV41_PGRAPH_ZCOMP0(i32 %93)
  %95 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %96 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nvkm_wr32(%struct.nvkm_device* %92, i32 %94, i32 %97)
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @NV41_PGRAPH_ZCOMP1(i32 %100)
  %102 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %103 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 %101, i32 %104)
  br label %107

106:                                              ; preds = %30
  br label %107

107:                                              ; preds = %106, %91, %76
  br label %167

108:                                              ; preds = %3, %3, %3
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @NV47_PGRAPH_TSIZE(i32 %110)
  %112 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %113 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nvkm_wr32(%struct.nvkm_device* %109, i32 %111, i32 %114)
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @NV47_PGRAPH_TLIMIT(i32 %117)
  %119 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %120 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @nvkm_wr32(%struct.nvkm_device* %116, i32 %118, i32 %121)
  %123 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @NV47_PGRAPH_TILE(i32 %124)
  %126 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %127 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @nvkm_wr32(%struct.nvkm_device* %123, i32 %125, i32 %128)
  %130 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @NV40_PGRAPH_TSIZE1(i32 %131)
  %133 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %134 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @nvkm_wr32(%struct.nvkm_device* %130, i32 %132, i32 %135)
  %137 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @NV40_PGRAPH_TLIMIT1(i32 %138)
  %140 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %141 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @nvkm_wr32(%struct.nvkm_device* %137, i32 %139, i32 %142)
  %144 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @NV40_PGRAPH_TILE1(i32 %145)
  %147 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %148 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @nvkm_wr32(%struct.nvkm_device* %144, i32 %146, i32 %149)
  %151 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @NV47_PGRAPH_ZCOMP0(i32 %152)
  %154 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %155 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @nvkm_wr32(%struct.nvkm_device* %151, i32 %153, i32 %156)
  %158 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @NV47_PGRAPH_ZCOMP1(i32 %159)
  %161 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %162 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @nvkm_wr32(%struct.nvkm_device* %158, i32 %160, i32 %163)
  br label %167

165:                                              ; preds = %3
  %166 = call i32 @WARN_ON(i32 1)
  br label %167

167:                                              ; preds = %165, %108, %107
  %168 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %9, align 8
  %169 = call i32 @nvkm_fifo_start(%struct.nvkm_fifo* %168, i64* %10)
  ret void
}

declare dso_local %struct.nv40_gr* @nv40_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_fifo_pause(%struct.nvkm_fifo*, i64*) #1

declare dso_local i32 @nv04_gr_idle(%struct.TYPE_6__*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @NV20_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV20_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV20_PGRAPH_TILE(i32) #1

declare dso_local i32 @NV40_PGRAPH_TSIZE1(i32) #1

declare dso_local i32 @NV40_PGRAPH_TLIMIT1(i32) #1

declare dso_local i32 @NV40_PGRAPH_TILE1(i32) #1

declare dso_local i32 @NV20_PGRAPH_ZCOMP(i32) #1

declare dso_local i32 @NV40_PGRAPH_ZCOMP1(i32) #1

declare dso_local i32 @NV41_PGRAPH_ZCOMP0(i32) #1

declare dso_local i32 @NV41_PGRAPH_ZCOMP1(i32) #1

declare dso_local i32 @NV47_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV47_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV47_PGRAPH_TILE(i32) #1

declare dso_local i32 @NV47_PGRAPH_ZCOMP0(i32) #1

declare dso_local i32 @NV47_PGRAPH_ZCOMP1(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_fifo_start(%struct.nvkm_fifo*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
