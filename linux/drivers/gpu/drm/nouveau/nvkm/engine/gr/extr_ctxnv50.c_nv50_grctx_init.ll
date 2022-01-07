; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_grctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_grctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_grctx = type { i64*, i32, i64, i32, i32, %struct.nvkm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVKM_GRCTX_PROG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_grctx_init(%struct.nvkm_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvkm_grctx, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i64* @kmalloc(i32 2048, i32 %9)
  store i64* %10, i64** %6, align 8
  %11 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 0
  %12 = load i64*, i64** %6, align 8
  store i64* %12, i64** %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 1
  store i32 512, i32* %13, align 8
  %14 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 3
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 4
  %17 = load i32, i32* @NVKM_GRCTX_PROG, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 5
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %18, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %2
  %26 = call i32 @nv50_grctx_generate(%struct.nvkm_grctx* %8)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %28 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 4195108, i64 0)
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %41, %25
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %35, i32 4195112, i64 %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %29

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %8, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = call i32 @kfree(i64* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @nv50_grctx_generate(%struct.nvkm_grctx*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
