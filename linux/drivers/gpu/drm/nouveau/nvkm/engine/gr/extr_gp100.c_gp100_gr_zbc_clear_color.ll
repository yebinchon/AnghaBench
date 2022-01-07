; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gp100.c_gp100_gr_zbc_clear_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gp100.c_gp100_gr_zbc_clear_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gp100_gr_zbc_clear_color(%struct.gf100_gr* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %9 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %19 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %2
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 4292624, %29
  %31 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %32 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %30, i32 %40)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 4292684, %43
  %45 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %46 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nvkm_wr32(%struct.nvkm_device* %42, i32 %44, i32 %54)
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 4292744, %57
  %59 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %60 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %56, i32 %58, i32 %68)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 4292804, %71
  %73 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %74 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 %72, i32 %82)
  br label %84

84:                                               ; preds = %27, %2
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sdiv i32 %86, 4
  %88 = mul nsw i32 %87, 4
  %89 = add nsw i32 4292864, %88
  %90 = load i32, i32* %6, align 4
  %91 = srem i32 %90, 4
  %92 = mul nsw i32 %91, 7
  %93 = shl i32 127, %92
  %94 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %95 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = srem i32 %102, 4
  %104 = mul nsw i32 %103, 7
  %105 = shl i32 %101, %104
  %106 = call i32 @nvkm_mask(%struct.nvkm_device* %85, i32 %89, i32 %93, i32 %105)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
