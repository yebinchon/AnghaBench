; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv10_gr = type { i32, %struct.nv10_gr_chan**, %struct.TYPE_6__ }
%struct.nv10_gr_chan = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV03_PGRAPH_INTR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSTATUS = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_ADDR = common dso_local global i32 0, align 4
@NV04_PGRAPH_TRAPPED_DATA = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_ERROR = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_CONTEXT_SWITCH = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@nv10_gr_intr_name = common dso_local global i32 0, align 4
@nv04_gr_nsource = common dso_local global i32 0, align 4
@nv10_gr_nstatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv10_gr_intr(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.nv10_gr*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
  %17 = alloca [128 x i8], align 16
  %18 = alloca [128 x i8], align 16
  %19 = alloca %struct.nv10_gr_chan*, align 8
  %20 = alloca i64, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %21 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %22 = call %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr* %21)
  store %struct.nv10_gr* %22, %struct.nv10_gr** %3, align 8
  %23 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %24 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %23, i32 0, i32 2
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
  store i32 %32, i32* %6, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = load i32, i32* @NV03_PGRAPH_NSOURCE, align 4
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* @NV03_PGRAPH_NSTATUS, align 4
  %38 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 32505856
  %44 = ashr i32 %43, 20
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 458752
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 8188
  store i32 %49, i32* %12, align 4
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %51 = load i32, i32* @NV04_PGRAPH_TRAPPED_DATA, align 4
  %52 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 4194656, %55
  %57 = call i32 @nvkm_rd32(%struct.nvkm_device* %53, i32 %56)
  %58 = and i32 %57, 4095
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %61 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %60, i32 0, i32 0
  %62 = load i64, i64* %20, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %65 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %64, i32 0, i32 1
  %66 = load %struct.nv10_gr_chan**, %struct.nv10_gr_chan*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %66, i64 %68
  %70 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %69, align 8
  store %struct.nv10_gr_chan* %70, %struct.nv10_gr_chan** %19, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %1
  %76 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %19, align 8
  %77 = icmp ne %struct.nv10_gr_chan* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %19, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @nv10_gr_mthd(%struct.nv10_gr_chan* %84, i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* @NV_PGRAPH_INTR_ERROR, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %90, %83
  br label %96

96:                                               ; preds = %95, %78, %75
  br label %97

97:                                               ; preds = %96, %1
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %104 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %105 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %106 = call i32 @nvkm_wr32(%struct.nvkm_device* %103, i32 %104, i32 %105)
  %107 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %15, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %15, align 4
  %115 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %116 = call i32 @nv10_gr_context_switch(%struct.nv10_gr* %115)
  br label %117

117:                                              ; preds = %102, %97
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %119 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @nvkm_wr32(%struct.nvkm_device* %118, i32 %119, i32 %120)
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %123 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %124 = call i32 @nvkm_wr32(%struct.nvkm_device* %122, i32 %123, i32 1)
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %117
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %129 = load i32, i32* @nv10_gr_intr_name, align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @nvkm_snprintbf(i8* %128, i32 128, i32 %129, i32 %130)
  %132 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %133 = load i32, i32* @nv04_gr_nsource, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @nvkm_snprintbf(i8* %132, i32 128, i32 %133, i32 %134)
  %136 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %137 = load i32, i32* @nv10_gr_nstatus, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @nvkm_snprintbf(i8* %136, i32 128, i32 %137, i32 %138)
  %140 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %141 = load i32, i32* %15, align 4
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %143 = load i32, i32* %7, align 4
  %144 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %145 = load i32, i32* %8, align 4
  %146 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %19, align 8
  %149 = icmp ne %struct.nv10_gr_chan* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %127
  %151 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %19, align 8
  %152 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  br label %158

157:                                              ; preds = %127
  br label %158

158:                                              ; preds = %157, %150
  %159 = phi i8* [ %156, %150 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %157 ]
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @nvkm_error(%struct.nvkm_subdev* %140, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %141, i8* %142, i32 %143, i8* %144, i32 %145, i8* %146, i32 %147, i8* %159, i32 %160, i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %117
  %166 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %167 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %166, i32 0, i32 0
  %168 = load i64, i64* %20, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  ret void
}

declare dso_local %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv10_gr_mthd(%struct.nv10_gr_chan*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv10_gr_context_switch(%struct.nv10_gr*) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
