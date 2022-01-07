; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv04_gr = type { i32, %struct.nv04_gr_chan**, %struct.TYPE_6__ }
%struct.nv04_gr_chan = type { %struct.TYPE_8__ }
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
@NV_PGRAPH_INTR_NOTIFY = common dso_local global i32 0, align 4
@NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD = common dso_local global i32 0, align 4
@NV_PGRAPH_INTR_CONTEXT_SWITCH = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@nv04_gr_intr_name = common dso_local global i32 0, align 4
@nv04_gr_nsource = common dso_local global i32 0, align 4
@nv04_gr_nstatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_gr*)* @nv04_gr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_gr_intr(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.nv04_gr*, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca [128 x i8], align 16
  %18 = alloca [128 x i8], align 16
  %19 = alloca [128 x i8], align 16
  %20 = alloca %struct.nv04_gr_chan*, align 8
  %21 = alloca i64, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %22 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %23 = call %struct.nv04_gr* @nv04_gr(%struct.nvkm_gr* %22)
  store %struct.nv04_gr* %23, %struct.nv04_gr** %3, align 8
  %24 = load %struct.nv04_gr*, %struct.nv04_gr** %3, align 8
  %25 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.nvkm_subdev* %27, %struct.nvkm_subdev** %4, align 8
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %28, i32 0, i32 0
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %29, align 8
  store %struct.nvkm_device* %30, %struct.nvkm_device** %5, align 8
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %33 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %35 = load i32, i32* @NV03_PGRAPH_NSOURCE, align 4
  %36 = call i32 @nvkm_rd32(%struct.nvkm_device* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %38 = load i32, i32* @NV03_PGRAPH_NSTATUS, align 4
  %39 = call i32 @nvkm_rd32(%struct.nvkm_device* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %41 = load i32, i32* @NV04_PGRAPH_TRAPPED_ADDR, align 4
  %42 = call i32 @nvkm_rd32(%struct.nvkm_device* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 251658240
  %45 = ashr i32 %44, 24
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 57344
  %48 = ashr i32 %47, 13
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 8188
  store i32 %50, i32* %12, align 4
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %52 = load i32, i32* @NV04_PGRAPH_TRAPPED_DATA, align 4
  %53 = call i32 @nvkm_rd32(%struct.nvkm_device* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 4
  %57 = add nsw i32 4194688, %56
  %58 = call i32 @nvkm_rd32(%struct.nvkm_device* %54, i32 %57)
  %59 = and i32 %58, 255
  store i32 %59, i32* %14, align 4
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = call i32 @nvkm_rd32(%struct.nvkm_device* %60, i32 4194668)
  %62 = and i32 %61, 65535
  %63 = shl i32 %62, 4
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %16, align 4
  %65 = load %struct.nv04_gr*, %struct.nv04_gr** %3, align 8
  %66 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %65, i32 0, i32 0
  %67 = load i64, i64* %21, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.nv04_gr*, %struct.nv04_gr** %3, align 8
  %70 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %69, i32 0, i32 1
  %71 = load %struct.nv04_gr_chan**, %struct.nv04_gr_chan*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %71, i64 %73
  %75 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %74, align 8
  store %struct.nv04_gr_chan* %75, %struct.nv04_gr_chan** %20, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @NV_PGRAPH_INTR_NOTIFY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %1
  %81 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %20, align 8
  %82 = icmp ne %struct.nv04_gr_chan* %81, null
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @nv04_gr_mthd(%struct.nvkm_device* %89, i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @NV_PGRAPH_INTR_NOTIFY, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %95, %88
  br label %101

101:                                              ; preds = %100, %83, %80
  br label %102

102:                                              ; preds = %101, %1
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %109 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %110 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %111 = call i32 @nvkm_wr32(%struct.nvkm_device* %108, i32 %109, i32 %110)
  %112 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @NV_PGRAPH_INTR_CONTEXT_SWITCH, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %16, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %16, align 4
  %120 = load %struct.nv04_gr*, %struct.nv04_gr** %3, align 8
  %121 = call i32 @nv04_gr_context_switch(%struct.nv04_gr* %120)
  br label %122

122:                                              ; preds = %107, %102
  %123 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %124 = load i32, i32* @NV03_PGRAPH_INTR, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @nvkm_wr32(%struct.nvkm_device* %123, i32 %124, i32 %125)
  %127 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %128 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %129 = call i32 @nvkm_wr32(%struct.nvkm_device* %127, i32 %128, i32 1)
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %170

132:                                              ; preds = %122
  %133 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %134 = load i32, i32* @nv04_gr_intr_name, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @nvkm_snprintbf(i8* %133, i32 128, i32 %134, i32 %135)
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %138 = load i32, i32* @nv04_gr_nsource, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @nvkm_snprintbf(i8* %137, i32 128, i32 %138, i32 %139)
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %142 = load i32, i32* @nv04_gr_nstatus, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @nvkm_snprintbf(i8* %141, i32 128, i32 %142, i32 %143)
  %145 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %146 = load i32, i32* %16, align 4
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %148 = load i32, i32* %7, align 4
  %149 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %150 = load i32, i32* %8, align 4
  %151 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %20, align 8
  %154 = icmp ne %struct.nv04_gr_chan* %153, null
  br i1 %154, label %155, label %162

155:                                              ; preds = %132
  %156 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %20, align 8
  %157 = getelementptr inbounds %struct.nv04_gr_chan, %struct.nv04_gr_chan* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  br label %163

162:                                              ; preds = %132
  br label %163

163:                                              ; preds = %162, %155
  %164 = phi i8* [ %161, %155 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %162 ]
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @nvkm_error(%struct.nvkm_subdev* %145, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %146, i8* %147, i32 %148, i8* %149, i32 %150, i8* %151, i32 %152, i8* %164, i32 %165, i32 %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %163, %122
  %171 = load %struct.nv04_gr*, %struct.nv04_gr** %3, align 8
  %172 = getelementptr inbounds %struct.nv04_gr, %struct.nv04_gr* %171, i32 0, i32 0
  %173 = load i64, i64* %21, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  ret void
}

declare dso_local %struct.nv04_gr* @nv04_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv04_gr_mthd(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv04_gr_context_switch(%struct.nv04_gr*) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
