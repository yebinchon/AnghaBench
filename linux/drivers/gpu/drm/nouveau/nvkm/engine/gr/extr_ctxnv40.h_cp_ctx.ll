; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.h_cp_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.h_cp_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i32, i64, i64 }

@CP_CTX_COUNT = common dso_local global i32 0, align 4
@CP_CTX_COUNT_SHIFT = common dso_local global i32 0, align 4
@CP_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*, i32, i32)* @cp_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_ctx(%struct.nvkm_grctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_grctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sub nsw i32 %7, 4194304
  %9 = ashr i32 %8, 2
  %10 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CP_CTX_COUNT, align 4
  %27 = load i32, i32* @CP_CTX_COUNT_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cp_lsr(%struct.nvkm_grctx* %31, i32 %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %36 = load i32, i32* @CP_CTX, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CP_CTX_COUNT_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %40, %43
  %45 = call i32 @cp_out(%struct.nvkm_grctx* %35, i32 %44)
  ret void
}

declare dso_local i32 @cp_lsr(%struct.nvkm_grctx*, i32) #1

declare dso_local i32 @cp_out(%struct.nvkm_grctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
