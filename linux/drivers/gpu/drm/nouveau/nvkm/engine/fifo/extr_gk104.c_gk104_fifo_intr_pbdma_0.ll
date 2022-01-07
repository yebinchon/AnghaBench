; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_pbdma_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_pbdma_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64 }
%struct.nvkm_fifo_chan = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32 }

@gk104_fifo_pbdma_intr_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"PBDMA%d: %08x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_fifo*, i32)* @gk104_fifo_intr_pbdma_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_fifo_intr_pbdma_0(%struct.gk104_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.gk104_fifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvkm_fifo_chan*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [128 x i8], align 16
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %19 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.nvkm_subdev* %21, %struct.nvkm_subdev** %5, align 8
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %22, i32 0, i32 0
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %23, align 8
  store %struct.nvkm_device* %24, %struct.nvkm_device** %6, align 8
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 8192
  %28 = add nsw i32 262412, %27
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %31, 8192
  %33 = add nsw i32 262408, %32
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 8192
  %40 = add nsw i32 262336, %39
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 8192
  %45 = add nsw i32 262340, %44
  %46 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = mul nsw i32 %48, 8192
  %50 = add nsw i32 262432, %49
  %51 = call i32 @nvkm_rd32(%struct.nvkm_device* %47, i32 %50)
  %52 = and i32 %51, 4095
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 458752
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 16380
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 8388608
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %2
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %64 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %69 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @nvkm_sw_mthd(i64 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %78, -8388609
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %67
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %2
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %84 = load i32, i32* %4, align 4
  %85 = mul nsw i32 %84, 8192
  %86 = add nsw i32 262336, %85
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %83, i32 %86, i32 -2141192184)
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %82
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %92 = load i32, i32* @gk104_fifo_pbdma_intr_0, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @nvkm_snprintbf(i8* %91, i32 128, i32 %92, i32 %93)
  %95 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %96 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %95, i32 0, i32 0
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_chid(%struct.TYPE_11__* %96, i32 %97, i64* %16)
  store %struct.nvkm_fifo_chan* %98, %struct.nvkm_fifo_chan** %15, align 8
  %99 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %14, align 4
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %15, align 8
  %105 = icmp ne %struct.nvkm_fifo_chan* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %90
  %107 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %15, align 8
  %108 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  br label %113

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112, %106
  %114 = phi i32 [ %111, %106 ], [ 0, %112 ]
  %115 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %15, align 8
  %116 = icmp ne %struct.nvkm_fifo_chan* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %15, align 8
  %119 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  br label %125

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %117
  %126 = phi i8* [ %123, %117 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %124 ]
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @nvkm_error(%struct.nvkm_subdev* %99, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i8* %102, i32 %103, i32 %114, i8* %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %132 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %131, i32 0, i32 0
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @nvkm_fifo_chan_put(%struct.TYPE_11__* %132, i64 %133, %struct.nvkm_fifo_chan** %15)
  br label %135

135:                                              ; preds = %125, %82
  %136 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %137 = load i32, i32* %4, align 4
  %138 = mul nsw i32 %137, 8192
  %139 = add nsw i32 262408, %138
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @nvkm_wr32(%struct.nvkm_device* %136, i32 %139, i32 %140)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @nvkm_sw_mthd(i64, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_chid(%struct.TYPE_11__*, i32, i64*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_fifo_chan_put(%struct.TYPE_11__*, i64, %struct.nvkm_fifo_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
