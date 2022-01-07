; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm200.c_gm200_grctx_generate_dist_skip_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm200.c_gm200_grctx_generate_dist_skip_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32*, i32**, i32**, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm200_grctx_generate_dist_skip_table(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %10 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %11 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %3, align 8
  %16 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 32, i1 false)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %95, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %20 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %91, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %27 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %25, %32
  br i1 %33, label %34, label %94

34:                                               ; preds = %24
  %35 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %36 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %47 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %65, %34
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  %60 = sext i32 %58 to i64
  %61 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %62 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %57

70:                                               ; preds = %57
  %71 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %72 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %24

94:                                               ; preds = %24
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %17

98:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %114, %98
  %100 = load i32, i32* %7, align 4
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %102 = call i32 @ARRAY_SIZE(i32* %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 %106, 4
  %108 = add nsw i32 4220112, %107
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @nvkm_wr32(%struct.nvkm_device* %105, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %99

117:                                              ; preds = %99
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
