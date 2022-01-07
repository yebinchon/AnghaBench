; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm200.c_gm200_grctx_generate_tpc_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgm200.c_gm200_grctx_generate_tpc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i64, i32*, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm200_grctx_generate_tpc_mask(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %8 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %13 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %20, %25
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %19, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %3, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %11
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %5

35:                                               ; preds = %5
  %36 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %37 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @nvkm_wr32(i32 %41, i32 4211140, i64 %42)
  ret void
}

declare dso_local i32 @nvkm_wr32(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
