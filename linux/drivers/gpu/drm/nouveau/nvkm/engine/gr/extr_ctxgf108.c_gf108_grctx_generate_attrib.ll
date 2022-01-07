; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf108.c_gf108_grctx_generate_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf108.c_gf108_grctx_generate_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_grctx = type { %struct.gf100_gr* }
%struct.gf100_gr = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gf100_grctx_func* }
%struct.gf100_grctx_func = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf108_grctx_generate_attrib(%struct.gf100_grctx* %0) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gf100_grctx* %0, %struct.gf100_grctx** %2, align 8
  %20 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %21 = getelementptr inbounds %struct.gf100_grctx, %struct.gf100_grctx* %20, i32 0, i32 0
  %22 = load %struct.gf100_gr*, %struct.gf100_gr** %21, align 8
  store %struct.gf100_gr* %22, %struct.gf100_gr** %3, align 8
  %23 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %24 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %26, align 8
  store %struct.gf100_grctx_func* %27, %struct.gf100_grctx_func** %4, align 8
  %28 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %29 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %32 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %35 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %38 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = mul nsw i32 32, %40
  store i32 %41, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %42 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %45 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = call i32 @mmio_vram(%struct.gf100_grctx* %42, i32 %47, i32 4096, i32 0)
  store i32 %48, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 65535, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %51 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %54 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = add nsw i32 %49, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @mmio_refn(%struct.gf100_grctx* %58, i32 4294672, i32 -2147483648, i32 12, i32 %59)
  %61 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @mmio_refn(%struct.gf100_grctx* %61, i32 4298824, i32 268435456, i32 12, i32 %62)
  %64 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @mmio_wr32(%struct.gf100_grctx* %64, i32 4216880, i32 %68)
  %70 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sdiv i32 %71, 4
  %73 = shl i32 %72, 16
  %74 = or i32 %73, 65535
  %75 = call i32 @mmio_wr32(%struct.gf100_grctx* %70, i32 4220100, i32 %74)
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %141, %1
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %79 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %144

82:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %137, %82
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %86 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %84, %91
  br i1 %92, label %93, label %140

93:                                               ; preds = %83
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @TPC_UNIT(i32 %96, i32 %97, i32 1280)
  store i32 %98, i32* %19, align 4
  %99 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 32
  %102 = load i32, i32* %17, align 4
  %103 = shl i32 %102, 16
  %104 = or i32 268435456, %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = or i32 %104, %106
  %108 = call i32 @mmio_skip(%struct.gf100_grctx* %99, i32 %101, i32 %107)
  %109 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 32
  %112 = load i32, i32* %17, align 4
  %113 = shl i32 %112, 16
  %114 = or i32 268435456, %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %12, align 4
  %117 = or i32 %114, %116
  %118 = call i32 @mmio_wr32(%struct.gf100_grctx* %109, i32 %111, i32 %117)
  %119 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %120 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load %struct.gf100_grctx*, %struct.gf100_grctx** %2, align 8
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %125, 68
  %127 = load i32, i32* %16, align 4
  %128 = shl i32 %127, 16
  %129 = load i32, i32* %13, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @mmio_wr32(%struct.gf100_grctx* %124, i32 %126, i32 %130)
  %132 = load %struct.gf100_grctx_func*, %struct.gf100_grctx_func** %4, align 8
  %133 = getelementptr inbounds %struct.gf100_grctx_func, %struct.gf100_grctx_func* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %93
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %83

140:                                              ; preds = %83
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %76

144:                                              ; preds = %76
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
