; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_pbdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_pbdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_fifo = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64 }
%struct.nvkm_fifo_chan = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32 }

@gf100_fifo_pbdma_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"PBDMA%d: %08x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_fifo*, i32)* @gf100_fifo_intr_pbdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_intr_pbdma(%struct.gf100_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_fifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_fifo_chan*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
  store %struct.gf100_fifo* %0, %struct.gf100_fifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %18 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.nvkm_subdev* %20, %struct.nvkm_subdev** %5, align 8
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %6, align 8
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 8192
  %27 = add nsw i32 262408, %26
  %28 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 8192
  %32 = add nsw i32 262336, %31
  %33 = call i32 @nvkm_rd32(%struct.nvkm_device* %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 8192
  %37 = add nsw i32 262340, %36
  %38 = call i32 @nvkm_rd32(%struct.nvkm_device* %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = mul nsw i32 %40, 8192
  %42 = add nsw i32 262432, %41
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %39, i32 %42)
  %44 = and i32 %43, 127
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 458752
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 16380
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 8388608
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %2
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %56 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %61 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @nvkm_sw_mthd(i64 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %15, align 4
  %71 = and i32 %70, -8388609
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %69, %59
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %73, %2
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %122

77:                                               ; preds = %74
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %79 = load i32, i32* @gf100_fifo_pbdma_intr, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @nvkm_snprintbf(i8* %78, i32 128, i32 %79, i32 %80)
  %82 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %83 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %82, i32 0, i32 0
  %84 = load i32, i32* %10, align 4
  %85 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_chid(%struct.TYPE_11__* %83, i32 %84, i64* %14)
  store %struct.nvkm_fifo_chan* %85, %struct.nvkm_fifo_chan** %13, align 8
  %86 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %15, align 4
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %13, align 8
  %92 = icmp ne %struct.nvkm_fifo_chan* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %77
  %94 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %13, align 8
  %95 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  br label %100

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi i32 [ %98, %93 ], [ 0, %99 ]
  %102 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %13, align 8
  %103 = icmp ne %struct.nvkm_fifo_chan* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %13, align 8
  %106 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  br label %112

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %104
  %113 = phi i8* [ %110, %104 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %111 ]
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @nvkm_error(%struct.nvkm_subdev* %86, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, i8* %89, i32 %90, i32 %101, i8* %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %119 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %118, i32 0, i32 0
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @nvkm_fifo_chan_put(%struct.TYPE_11__* %119, i64 %120, %struct.nvkm_fifo_chan** %13)
  br label %122

122:                                              ; preds = %112, %74
  %123 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %124 = load i32, i32* %4, align 4
  %125 = mul nsw i32 %124, 8192
  %126 = add nsw i32 262336, %125
  %127 = call i32 @nvkm_wr32(%struct.nvkm_device* %123, i32 %126, i32 -2141192184)
  %128 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %129 = load i32, i32* %4, align 4
  %130 = mul nsw i32 %129, 8192
  %131 = add nsw i32 262408, %130
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @nvkm_wr32(%struct.nvkm_device* %128, i32 %131, i32 %132)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @nvkm_sw_mthd(i64, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_chid(%struct.TYPE_11__*, i32, i64*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_fifo_chan_put(%struct.TYPE_11__*, i64, %struct.nvkm_fifo_chan**) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
