; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_estimate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64 }
%struct.page = type { i32 }

@DMA_PQ = common dso_local global i32 0, align 4
@DMA_PQ_VAL = common dso_local global i32 0, align 4
@ppc440spe_r6_enabled = common dso_local global i32 0, align 4
@PPC440SPE_XOR_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.page**, i32, %struct.page**, i32, i64)* @ppc440spe_adma_estimate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc440spe_adma_estimate(%struct.dma_chan* %0, i32 %1, %struct.page** %2, i32 %3, %struct.page** %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.page** %2, %struct.page*** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.page** %4, %struct.page*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @DMA_PQ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @DMA_PQ_VAL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20, %7
  %25 = load i32, i32* @ppc440spe_r6_enabled, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %8, align 4
  br label %82

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @DMA_PQ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %39 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PPC440SPE_XOR_ID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.page**, %struct.page*** %11, align 8
  %51 = getelementptr inbounds %struct.page*, %struct.page** %50, i64 0
  %52 = load %struct.page*, %struct.page** %51, align 8
  %53 = load %struct.page**, %struct.page*** %13, align 8
  %54 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 1
  %55 = load %struct.page*, %struct.page** %54, align 8
  %56 = icmp eq %struct.page* %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %16, align 4
  br label %67

58:                                               ; preds = %49, %46, %43
  %59 = load %struct.page**, %struct.page*** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i64, i64* %15, align 8
  %62 = call i64 @ppc440spe_can_rxor(%struct.page** %59, i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 3, i32* %16, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %37, %33
  %69 = load i32, i32* %16, align 4
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %74 = call i32 @to_ppc440spe_adma_chan(%struct.dma_chan* %73)
  %75 = call i32 @ppc440spe_chan_is_busy(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %77, %72, %68
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %31
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ppc440spe_can_rxor(%struct.page**, i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ppc440spe_chan_is_busy(i32) #1

declare dso_local i32 @to_ppc440spe_adma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
