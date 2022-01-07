; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_dh_clear_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_asym_algs.c_qat_dh_clear_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qat_dh_ctx = type { i32, i64, i32*, i32, i32*, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.qat_dh_ctx*)* @qat_dh_clear_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_dh_clear_ctx(%struct.device* %0, %struct.qat_dh_ctx* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.qat_dh_ctx*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.qat_dh_ctx* %1, %struct.qat_dh_ctx** %4, align 8
  %5 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %6 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dma_free_coherent(%struct.device* %10, i64 %13, i32* %16, i32 %19)
  %21 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %9, %2
  %24 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dma_free_coherent(%struct.device* %29, i64 %32, i32* %35, i32 %38)
  %40 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %28, %23
  %43 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_coherent(%struct.device* %48, i64 %51, i32* %54, i32 %57)
  %59 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %47, %42
  %62 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.qat_dh_ctx*, %struct.qat_dh_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.qat_dh_ctx, %struct.qat_dh_ctx* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
