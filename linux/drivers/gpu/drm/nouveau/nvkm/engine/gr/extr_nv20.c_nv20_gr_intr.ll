; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv20.c_nv20_gr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv20.c_nv20_gr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv20_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fifo_chan = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSTATUS = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_DATA = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@nv10_gr_intr_name = common dso_local global i32 0, align 4
@nv04_gr_nsource = common dso_local global i32 0, align 4
@nv10_gr_nstatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv20_gr_intr(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.nv20_gr*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_fifo_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [128 x i8], align 16
  %18 = alloca [128 x i8], align 16
  %19 = alloca [128 x i8], align 16
  %20 = alloca i64, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %21 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %22 = call %struct.nv20_gr* @nv20_gr(%struct.nvkm_gr* %21)
  store %struct.nv20_gr* %22, %struct.nv20_gr** %3, align 8
  %23 = load %struct.nv20_gr*, %struct.nv20_gr** %3, align 8
  %24 = getelementptr inbounds %struct.nv20_gr, %struct.nv20_gr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.nvkm_subdev* %26, %struct.nvkm_subdev** %4, align 8
  %27 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %27, i32 0, i32 0
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %28, align 8
  store %struct.nvkm_device* %29, %struct.nvkm_device** %5, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %31 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %32 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = load i32, i32* @NV03_PGRAPH_NSOURCE, align 4
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* @NV03_PGRAPH_NSTATUS, align 4
  %38 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 32505856
  %44 = ashr i32 %43, 20
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 458752
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 8188
  store i32 %49, i32* %13, align 4
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %51 = load i32, i32* @NV04_PGRAPH_TRAPPED_DATA, align 4
  %52 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 4194656, %55
  %57 = call i32 @nvkm_rd32(%struct.nvkm_device* %53, i32 %56)
  %58 = and i32 %57, 4095
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %16, align 4
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_chid(i32 %62, i32 %63, i64* %20)
  store %struct.nvkm_fifo_chan* %64, %struct.nvkm_fifo_chan** %6, align 8
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %66 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 %66, i32 %67)
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %70 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %71 = call i32 @nvkm_wr32(%struct.nvkm_device* %69, i32 %70, i32 1)
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %1
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %76 = load i32, i32* @nv10_gr_intr_name, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @nvkm_snprintbf(i8* %75, i32 128, i32 %76, i32 %77)
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %80 = load i32, i32* @nv04_gr_nsource, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @nvkm_snprintbf(i8* %79, i32 128, i32 %80, i32 %81)
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %84 = load i32, i32* @nv10_gr_nstatus, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @nvkm_snprintbf(i8* %83, i32 128, i32 %84, i32 %85)
  %87 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %88 = load i32, i32* %16, align 4
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %92 = load i32, i32* %9, align 4
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %96 = icmp ne %struct.nvkm_fifo_chan* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %74
  %98 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %6, align 8
  %99 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  br label %105

104:                                              ; preds = %74
  br label %105

105:                                              ; preds = %104, %97
  %106 = phi i8* [ %103, %97 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %104 ]
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @nvkm_error(%struct.nvkm_subdev* %87, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %88, i8* %89, i32 %90, i8* %91, i32 %92, i8* %93, i32 %94, i8* %106, i32 %107, i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %1
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %114 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %20, align 8
  %117 = call i32 @nvkm_fifo_chan_put(i32 %115, i64 %116, %struct.nvkm_fifo_chan** %6)
  ret void
}

declare dso_local %struct.nv20_gr* @nv20_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_chid(i32, i32, i64*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_fifo_chan_put(i32, i64, %struct.nvkm_fifo_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
