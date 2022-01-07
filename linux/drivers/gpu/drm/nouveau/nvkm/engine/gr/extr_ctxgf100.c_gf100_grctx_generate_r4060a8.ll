; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_r4060a8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgf100.c_gf100_grctx_generate_r4060a8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_grctx_generate_r4060a8(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %10 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %11 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %3, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 140336)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 140340)
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %69, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DIV_ROUND_UP(i32 %24, i32 4)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %34 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %39 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 8
  %49 = shl i32 %46, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %58

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 8
  %55 = shl i32 31, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %52, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %28

62:                                               ; preds = %28
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %64, 4
  %66 = add nsw i32 4219048, %65
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %22

72:                                               ; preds = %22
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
