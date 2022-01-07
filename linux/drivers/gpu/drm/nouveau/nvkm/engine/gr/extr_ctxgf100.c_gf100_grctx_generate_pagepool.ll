; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_pagepool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_pagepool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_grctx_generate_pagepool(%struct.gf100_grctx* %0) #0 {
  %2 = alloca %struct.gf100_grctx*, align 8
  %3 = alloca %struct.gf100_grctx_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gf100_grctx* %0, %struct.gf100_grctx** %2, align 8
  %6 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %7 = getelementptr inbounds %struct.gf100_grctx, %struct.gf100_grctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %11, align 8
  store %struct.gf100_grctx_func* %12, %struct.gf100_grctx_func** %3, align 8
  store i32 8, i32* %4, align 4
  %13 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %14 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %3, align 8
  %15 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mmio_vram(%struct.gf100_grctx* %13, i32 %16, i32 256, i32 1)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mmio_refn(%struct.gf100_grctx* %18, i32 4227084, i32 0, i32 8, i32 %19)
  %21 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %22 = call i32 @mmio_wr32(%struct.gf100_grctx* %21, i32 4227088, i32 -2147483648)
  %23 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mmio_refn(%struct.gf100_grctx* %23, i32 4296708, i32 0, i32 8, i32 %24)
  %26 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %27 = call i32 @mmio_wr32(%struct.gf100_grctx* %26, i32 4296712, i32 0)
  ret void
}

declare dso_local i32 @mmio_vram(%struct.gf100_grctx*, i32, i32, i32) #1

declare dso_local i32 @mmio_refn(%struct.gf100_grctx*, i32, i32, i32, i32) #1

declare dso_local i32 @mmio_wr32(%struct.gf100_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
