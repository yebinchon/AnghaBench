; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_sm_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_sm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_grctx_generate_sm_id(%struct.gf100_gr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gf100_gr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_device*, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.gf100_gr*, %struct.gf100_gr** %5, align 8
  %11 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %9, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @TPC_UNIT(i32 %17, i32 %18, i32 1688)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 %19, i32 %20)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @TPC_UNIT(i32 %23, i32 %24, i32 1256)
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 %25, i32 %26)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 3088, %31
  %33 = call i32 @GPC_UNIT(i32 %29, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %33, i32 %34)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @TPC_UNIT(i32 %37, i32 %38, i32 136)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @nvkm_wr32(%struct.nvkm_device* %36, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
