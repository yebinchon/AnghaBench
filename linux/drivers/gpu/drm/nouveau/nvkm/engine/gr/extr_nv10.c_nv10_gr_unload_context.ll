; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_unload_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_unload_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr_chan = type { i8**, i8**, %struct.nv10_gr* }
%struct.nv10_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64, i32 }

@nv10_gr_ctx_regs = common dso_local global i32* null, align 8
@NV_11 = common dso_local global i64 0, align 8
@nv17_gr_ctx_regs = common dso_local global i32* null, align 8
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv10_gr_chan*)* @nv10_gr_unload_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_gr_unload_context(%struct.nv10_gr_chan* %0) #0 {
  %2 = alloca %struct.nv10_gr_chan*, align 8
  %3 = alloca %struct.nv10_gr*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nv10_gr_chan* %0, %struct.nv10_gr_chan** %2, align 8
  %6 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %7 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %6, i32 0, i32 2
  %8 = load %struct.nv10_gr*, %struct.nv10_gr** %7, align 8
  store %struct.nv10_gr* %8, %struct.nv10_gr** %3, align 8
  %9 = load %struct.nv10_gr*, %struct.nv10_gr** %3, align 8
  %10 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %34, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** @nv10_gr_ctx_regs, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = load i32*, i32** @nv10_gr_ctx_regs, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @nvkm_rd32(%struct.nvkm_device* %21, i32 %26)
  %28 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %29 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %27, i8** %33, align 8
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %39 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NV_11, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 23
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** @nv17_gr_ctx_regs, align 8
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %56 = load i32*, i32** @nv17_gr_ctx_regs, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @nvkm_rd32(%struct.nvkm_device* %55, i32 %60)
  %62 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %63 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %61, i8** %67, align 8
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %49

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71, %43, %37
  %73 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %2, align 8
  %74 = call i32 @nv10_gr_save_pipe(%struct.nv10_gr_chan* %73)
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %76 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %77 = call i32 @nvkm_wr32(%struct.nvkm_device* %75, i32 %76, i32 268435456)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %79 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %80 = call i32 @nvkm_mask(%struct.nvkm_device* %78, i32 %79, i32 -16777216, i32 520093696)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv10_gr_save_pipe(%struct.nv10_gr_chan*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
