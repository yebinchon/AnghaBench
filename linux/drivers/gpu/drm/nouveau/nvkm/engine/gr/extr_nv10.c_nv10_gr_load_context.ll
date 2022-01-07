; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_load_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_load_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr_chan = type { i32*, i32*, %struct.nv10_gr* }
%struct.nv10_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64, i32 }

@nv10_gr_ctx_regs = common dso_local global i32* null, align 8
@NV_11 = common dso_local global i64 0, align 8
@nv17_gr_ctx_regs = common dso_local global i32* null, align 8
@NV10_PGRAPH_GLOBALSTATE1 = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv10_gr_chan*, i32)* @nv10_gr_load_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_gr_load_context(%struct.nv10_gr_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.nv10_gr_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv10_gr*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nv10_gr_chan* %0, %struct.nv10_gr_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %3, align 8
  %10 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %9, i32 0, i32 2
  %11 = load %struct.nv10_gr*, %struct.nv10_gr** %10, align 8
  store %struct.nv10_gr* %11, %struct.nv10_gr** %5, align 8
  %12 = load %struct.nv10_gr*, %struct.nv10_gr** %5, align 8
  %13 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %38, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** @nv10_gr_ctx_regs, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %25 = load i32*, i32** @nv10_gr_ctx_regs, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %3, align 8
  %31 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 %29, i32 %36)
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %43 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NV_11, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %49 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 23
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** @nv17_gr_ctx_regs, align 8
  %56 = call i32 @ARRAY_SIZE(i32* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %60 = load i32*, i32** @nv17_gr_ctx_regs, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %3, align 8
  %66 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nvkm_wr32(%struct.nvkm_device* %59, i32 %64, i32 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %53

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76, %47, %41
  %78 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %3, align 8
  %79 = call i32 @nv10_gr_load_pipe(%struct.nv10_gr_chan* %78)
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %81 = load i32, i32* @NV10_PGRAPH_GLOBALSTATE1, align 4
  %82 = call i32 @nvkm_rd32(%struct.nvkm_device* %80, i32 %81)
  %83 = and i32 %82, 65535
  store i32 %83, i32* %7, align 4
  %84 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @nv10_gr_load_dma_vtxbuf(%struct.nv10_gr_chan* %84, i32 %85, i32 %86)
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %89 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %90 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 %89, i32 268501248)
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %92 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %93 = load i32, i32* %4, align 4
  %94 = shl i32 %93, 24
  %95 = call i32 @nvkm_mask(%struct.nvkm_device* %91, i32 %92, i32 -16777216, i32 %94)
  %96 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %97 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %98 = call i32 @nvkm_mask(%struct.nvkm_device* %96, i32 %97, i32 805306368, i32 0)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nv10_gr_load_pipe(%struct.nv10_gr_chan*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv10_gr_load_dma_vtxbuf(%struct.nv10_gr_chan*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
