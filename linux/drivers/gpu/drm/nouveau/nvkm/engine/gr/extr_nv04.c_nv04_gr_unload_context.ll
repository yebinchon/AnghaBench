; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_unload_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv04.c_nv04_gr_unload_context.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv04_gr_chan*)* @nv04_gr_unload_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_gr_unload_context(%struct.nv04_gr_chan* %0) #0 {
  %2 = alloca %struct.nv04_gr_chan*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nv04_gr_chan* %0, %struct.nv04_gr_chan** %2, align 8
  %5 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %2, align 8
  %6 = getelementptr inbounds %struct.nv04_gr_chan, %struct.nv04_gr_chan* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32*, i32** @nv04_gr_ctx_regs, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %20 = load i32*, i32** @nv04_gr_ctx_regs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 %24)
  %26 = load %struct.nv04_gr_chan*, %struct.nv04_gr_chan** %2, align 8
  %27 = getelementptr inbounds %struct.nv04_gr_chan, %struct.nv04_gr_chan* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %37 = load i32, i32* @NV04_PGRAPH_CTX_CONTROL, align 4
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %36, i32 %37, i32 268435456)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %40 = load i32, i32* @NV04_PGRAPH_CTX_USER, align 4
  %41 = call i32 @nvkm_mask(%struct.nvkm_device* %39, i32 %40, i32 -16777216, i32 251658240)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
