; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_load_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_load_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_gr_chan = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nv04_gr_ctx_regs = common dso_local global i32* null, align 8
@NV04_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV04_PGRAPH_FFINTFC_ST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv04_gr_chan*, i32)* @nv04_gr_load_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_gr_load_context(%struct.nv04_gr_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.nv04_gr_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nv04_gr_chan* %0, %struct.nv04_gr_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %3, align 8
  %8 = getelementptr inbounds %struct.nv04_gr_chan, %struct.nv04_gr_chan* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** @nv04_gr_ctx_regs, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load i32*, i32** @nv04_gr_ctx_regs, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %3, align 8
  %28 = getelementptr inbounds %struct.nv04_gr_chan, %struct.nv04_gr_chan* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %21, i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* @NV04_PGRAPH_CTX_CONTROL, align 4
  %41 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 %40, i32 268501248)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = load i32, i32* @NV04_PGRAPH_CTX_USER, align 4
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 %44, 24
  %46 = call i32 @nvkm_mask(%struct.nvkm_device* %42, i32 %43, i32 -16777216, i32 %45)
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %48 = load i32, i32* @NV04_PGRAPH_FFINTFC_ST2, align 4
  %49 = call i32 @nvkm_mask(%struct.nvkm_device* %47, i32 %48, i32 -1048576, i32 0)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
