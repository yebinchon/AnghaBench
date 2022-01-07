; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm107.c_gm107_grctx_generate_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm107.c_gm107_grctx_generate_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm107_grctx_generate_bundle(%struct.gf100_grctx* %0) #0 {
  %2 = alloca %struct.gf100_grctx*, align 8
  %3 = alloca %struct.gf100_grctx_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gf100_grctx* %0, %struct.gf100_grctx** %2, align 8
  %8 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %9 = getelementptr inbounds %struct.gf100_grctx, %struct.gf100_grctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %13, align 8
  store %struct.gf100_grctx_func* %14, %struct.gf100_grctx_func** %3, align 8
  %15 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %3, align 8
  %16 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %3, align 8
  %19 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 32
  %22 = call i32 @min(i32 %17, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %3, align 8
  %24 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  store i32 8, i32* %6, align 4
  %26 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %27 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %3, align 8
  %28 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mmio_vram(%struct.gf100_grctx* %26, i32 %29, i32 256, i32 1)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mmio_refn(%struct.gf100_grctx* %31, i32 4227076, i32 0, i32 8, i32 %32)
  %34 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %35 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %3, align 8
  %36 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = or i32 -2147483648, %38
  %40 = call i32 @mmio_wr32(%struct.gf100_grctx* %34, i32 4227080, i32 %39)
  %41 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mmio_refn(%struct.gf100_grctx* %41, i32 4296228, i32 0, i32 8, i32 %42)
  %44 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %45 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %3, align 8
  %46 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = or i32 -2147483648, %48
  %50 = call i32 @mmio_wr32(%struct.gf100_grctx* %44, i32 4296232, i32 %49)
  %51 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @mmio_wr32(%struct.gf100_grctx* %51, i32 4220104, i32 %55)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mmio_vram(%struct.gf100_grctx*, i32, i32, i32) #1

declare dso_local i32 @mmio_refn(%struct.gf100_grctx*, i32, i32, i32, i32) #1

declare dso_local i32 @mmio_wr32(%struct.gf100_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
