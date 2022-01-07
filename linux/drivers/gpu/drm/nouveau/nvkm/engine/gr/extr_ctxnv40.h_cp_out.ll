; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.h_cp_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv40.h_cp_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { i64, i64, i64, i32* }

@NVKM_GRCTX_PROG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*, i32)* @cp_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_out(%struct.nvkm_grctx* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_grctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NVKM_GRCTX_PROG, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %3, align 8
  %28 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
