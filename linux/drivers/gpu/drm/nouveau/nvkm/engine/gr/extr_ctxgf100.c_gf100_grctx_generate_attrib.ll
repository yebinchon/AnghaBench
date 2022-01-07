; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.gf100_gr* }
%struct.gf100_gr = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_grctx_generate_attrib(%struct.gf100_grctx* %0) #0 {
  %2 = alloca %struct.gf100_grctx*, align 8
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca %struct.gf100_grctx_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gf100_grctx* %0, %struct.gf100_grctx** %2, align 8
  %13 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %14 = getelementptr inbounds %struct.gf100_grctx, %struct.gf100_grctx* %13, i32 0, i32 0
  %15 = load %struct.gf100_gr*, %struct.gf100_gr** %14, align 8
  store %struct.gf100_gr* %15, %struct.gf100_gr** %3, align 8
  %16 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %17 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %19, align 8
  store %struct.gf100_grctx_func* %20, %struct.gf100_grctx_func** %4, align 8
  %21 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %22 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %25 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %28 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = mul nsw i32 32, %30
  store i32 %31, i32* %6, align 4
  store i32 12, i32* %7, align 4
  %32 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %35 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = call i32 @mmio_vram(%struct.gf100_grctx* %32, i32 %37, i32 4096, i32 0)
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %39 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mmio_refn(%struct.gf100_grctx* %39, i32 4294672, i32 -2147483648, i32 12, i32 %40)
  %42 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mmio_refn(%struct.gf100_grctx* %42, i32 4298824, i32 268435456, i32 12, i32 %43)
  %45 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 %46, 16
  %48 = call i32 @mmio_wr32(%struct.gf100_grctx* %45, i32 4216880, i32 %47)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %95, %1
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %52 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %91, %55
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %59 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %57, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @TPC_UNIT(i32 %67, i32 %68, i32 1312)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %5, align 4
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  %76 = or i32 %73, %75
  %77 = call i32 @mmio_skip(%struct.gf100_grctx* %70, i32 %71, i32 %76)
  %78 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %5, align 4
  %81 = shl i32 %80, 16
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %11, align 4
  %84 = or i32 %81, %83
  %85 = call i32 @mmio_wr32(%struct.gf100_grctx* %78, i32 %79, i32 %84)
  %86 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %87 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %66
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %56

94:                                               ; preds = %56
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %49

98:                                               ; preds = %49
  ret void
}

declare dso_local i32 @mmio_vram(%struct.gf100_grctx*, i32, i32, i32) #1

declare dso_local i32 @mmio_refn(%struct.gf100_grctx*, i32, i32, i32, i32) #1

declare dso_local i32 @mmio_wr32(%struct.gf100_grctx*, i32, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @mmio_skip(%struct.gf100_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
