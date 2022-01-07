; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_write_ctrl_omap2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_write_ctrl_omap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i32 }
%struct.omap_sham_reqctx = type { i32, i32 }

@SHA_REG_MASK_IT_EN = common dso_local global i32 0, align 4
@SHA_REG_MASK_DMA_EN = common dso_local global i32 0, align 4
@FLAGS_MODE_MASK = common dso_local global i32 0, align 4
@FLAGS_MODE_SHA1 = common dso_local global i32 0, align 4
@SHA_REG_CTRL_ALGO = common dso_local global i32 0, align 4
@SHA_REG_CTRL_ALGO_CONST = common dso_local global i32 0, align 4
@SHA_REG_CTRL_CLOSE_HASH = common dso_local global i32 0, align 4
@SHA_REG_CTRL_LENGTH = common dso_local global i32 0, align 4
@SHA_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_sham_dev*, i64, i32, i32)* @omap_sham_write_ctrl_omap2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_write_ctrl_omap2(%struct.omap_sham_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.omap_sham_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_sham_reqctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.omap_sham_dev* %0, %struct.omap_sham_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %13 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.omap_sham_reqctx* @ahash_request_ctx(i32 %14)
  store %struct.omap_sham_reqctx* %15, %struct.omap_sham_reqctx** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = shl i64 %16, 5
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %20 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %26 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %27 = call i32 @SHA_REG_DIGCNT(%struct.omap_sham_dev* %26)
  %28 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %29 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @omap_sham_write(%struct.omap_sham_dev* %25, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %4
  %33 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %34 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %35 = call i32 @SHA_REG_MASK(%struct.omap_sham_dev* %34)
  %36 = load i32, i32* @SHA_REG_MASK_IT_EN, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @SHA_REG_MASK_DMA_EN, align 4
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = or i32 %36, %43
  %45 = load i32, i32* @SHA_REG_MASK_IT_EN, align 4
  %46 = load i32, i32* @SHA_REG_MASK_DMA_EN, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @omap_sham_write_mask(%struct.omap_sham_dev* %33, i32 %35, i32 %44, i32 %47)
  %49 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %50 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @FLAGS_MODE_SHA1, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i32, i32* @SHA_REG_CTRL_ALGO, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %42
  %61 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %9, align 8
  %62 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @SHA_REG_CTRL_ALGO_CONST, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @SHA_REG_CTRL_CLOSE_HASH, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* @SHA_REG_CTRL_ALGO_CONST, align 4
  %78 = load i32, i32* @SHA_REG_CTRL_CLOSE_HASH, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SHA_REG_CTRL_ALGO, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SHA_REG_CTRL_LENGTH, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %11, align 4
  %84 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %85 = load i32, i32* @SHA_REG_CTRL, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @omap_sham_write_mask(%struct.omap_sham_dev* %84, i32 %85, i32 %86, i32 %87)
  ret void
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @omap_sham_write(%struct.omap_sham_dev*, i32, i32) #1

declare dso_local i32 @SHA_REG_DIGCNT(%struct.omap_sham_dev*) #1

declare dso_local i32 @omap_sham_write_mask(%struct.omap_sham_dev*, i32, i32, i32) #1

declare dso_local i32 @SHA_REG_MASK(%struct.omap_sham_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
