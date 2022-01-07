; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv10_gr = type { i32, %struct.nv10_gr_chan**, %struct.TYPE_6__ }
%struct.nv10_gr_chan = type { i32, %struct.nvkm_object, %struct.nv10_gr* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv10_gr_chan = common dso_local global i32 0, align 4
@NV03_PGRAPH_XY_LOGIC_MISC0 = common dso_local global i32 0, align 4
@NV_11 = common dso_local global i64 0, align 8
@NV10_PGRAPH_DEBUG_4 = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv10_gr_chan_new(%struct.nvkm_gr* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_gr*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.nv10_gr*, align 8
  %11 = alloca %struct.nv10_gr_chan*, align 8
  %12 = alloca %struct.nvkm_device*, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %6, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %7, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %8, align 8
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %14 = load %struct.nvkm_gr*, %struct.nvkm_gr** %6, align 8
  %15 = call %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr* %14)
  store %struct.nv10_gr* %15, %struct.nv10_gr** %10, align 8
  %16 = load %struct.nv10_gr*, %struct.nv10_gr** %10, align 8
  %17 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %12, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nv10_gr_chan* @kzalloc(i32 16, i32 %22)
  store %struct.nv10_gr_chan* %23, %struct.nv10_gr_chan** %11, align 8
  %24 = icmp ne %struct.nv10_gr_chan* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %101

28:                                               ; preds = %4
  %29 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %30 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %31 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %30, i32 0, i32 1
  %32 = call i32 @nvkm_object_ctor(i32* @nv10_gr_chan, %struct.nvkm_oclass* %29, %struct.nvkm_object* %31)
  %33 = load %struct.nv10_gr*, %struct.nv10_gr** %10, align 8
  %34 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %35 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %34, i32 0, i32 2
  store %struct.nv10_gr* %33, %struct.nv10_gr** %35, align 8
  %36 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %37 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %40 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %42 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %41, i32 0, i32 1
  %43 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %42, %struct.nvkm_object** %43, align 8
  %44 = call i32 @NV_WRITE_CTX(i32 4198024, i32 134217728)
  %45 = call i32 @NV_WRITE_CTX(i32 4198044, i32 1266679807)
  %46 = load i32, i32* @NV03_PGRAPH_XY_LOGIC_MISC0, align 4
  %47 = call i32 @NV_WRITE_CTX(i32 %46, i32 131071)
  %48 = call i32 @NV_WRITE_CTX(i32 4197904, i32 4096)
  %49 = call i32 @NV_WRITE_CTX(i32 4197908, i32 4096)
  %50 = call i32 @NV_WRITE_CTX(i32 4197936, i32 524296)
  %51 = call i32 @NV_WRITE_CTX(i32 4197940, i32 524296)
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %53 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NV_11, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %28
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %59 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp sge i32 %60, 23
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %65 = load i32, i32* @NV10_PGRAPH_DEBUG_4, align 4
  %66 = call i32 @nvkm_rd32(%struct.nvkm_device* %64, i32 %65)
  %67 = call i32 @NV17_WRITE_CTX(i32 %63, i32 %66)
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %69 = call i32 @nvkm_rd32(%struct.nvkm_device* %68, i32 4196016)
  %70 = call i32 @NV17_WRITE_CTX(i32 4196016, i32 %69)
  %71 = call i32 @NV17_WRITE_CTX(i32 4198060, i32 268369920)
  %72 = call i32 @NV17_WRITE_CTX(i32 4198064, i32 268369920)
  %73 = call i32 @NV17_WRITE_CTX(i32 4198080, i32 128)
  %74 = call i32 @NV17_WRITE_CTX(i32 4198096, i32 128)
  br label %75

75:                                               ; preds = %62, %57, %28
  %76 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %77 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %78 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = shl i32 %79, 24
  %81 = call i32 @NV_WRITE_CTX(i32 %76, i32 %80)
  %82 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %83 = call i32 @nv10_gr_create_pipe(%struct.nv10_gr_chan* %82)
  %84 = load %struct.nv10_gr*, %struct.nv10_gr** %10, align 8
  %85 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %84, i32 0, i32 0
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %89 = load %struct.nv10_gr*, %struct.nv10_gr** %10, align 8
  %90 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %89, i32 0, i32 1
  %91 = load %struct.nv10_gr_chan**, %struct.nv10_gr_chan*** %90, align 8
  %92 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %11, align 8
  %93 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %91, i64 %95
  store %struct.nv10_gr_chan* %88, %struct.nv10_gr_chan** %96, align 8
  %97 = load %struct.nv10_gr*, %struct.nv10_gr** %10, align 8
  %98 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %97, i32 0, i32 0
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %75, %25
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr*) #1

declare dso_local %struct.nv10_gr_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

declare dso_local i32 @NV_WRITE_CTX(i32, i32) #1

declare dso_local i32 @NV17_WRITE_CTX(i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv10_gr_create_pipe(%struct.nv10_gr_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
